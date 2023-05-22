import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:udemy_flutter_sns/constants/strings.dart';

import '../domain/firestore_user/firestore_user.dart';

final signupProvider =
    ChangeNotifierProvider<SignupModel>((ref) => SignupModel());

class SignupModel extends ChangeNotifier {
  String email = "";
  String password = "";
  bool isObscure = true;

  Future<void> createFirestoreUser(
      {required BuildContext context, required String uid}) async {
    final now = Timestamp.now();
    final FirestoreUser firestoreUser = FirestoreUser(
        email: email,
        uid: uid,
        userName: "Alice",
        createdAt: now,
        updatedAt: now);
    final Map<String, dynamic> userData = firestoreUser.toJson();
    await FirebaseFirestore.instance
        .collection(usersFieldKey)
        .doc(uid)
        .set(userData);
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(userCreatedMsg)));
    notifyListeners();
  }

  // FirebaseAuthのユーザーを作成
  Future<void> createUser({required BuildContext context}) async {
    try {
      final UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      final User? user = userCredential.user;
      final String uid = user!.uid;
      await createFirestoreUser(context: context, uid: uid);
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.message!)));
    }
  }

  void toggleIsObscure() {
    isObscure = !isObscure;
    notifyListeners();
  }
}
