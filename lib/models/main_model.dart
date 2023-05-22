import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:udemy_flutter_sns/constants/strings.dart';

final mainProvider = ChangeNotifierProvider<MainModel>((ref) => MainModel());

class MainModel extends ChangeNotifier {
  bool isLoading = false;
  User? currentUser = null;
  late DocumentSnapshot<Map<String, dynamic>> currentUserDoc;

  MainModel() {
    init();
  }

  Future<void> init() async {
    startLoading();
    currentUser = FirebaseAuth.instance.currentUser;
    await FirebaseFirestore.instance
        .collection(usersFieldKey)
        .doc(currentUser!.uid)
        .get()
        .then((value) => currentUserDoc = value);
    endLoading();
  }

  void startLoading() {
    isLoading = true;
    notifyListeners();
  }

  void endLoading() {
    isLoading = false;
    notifyListeners();
  }

  void setCurrentUser() {
    currentUser = FirebaseAuth.instance.currentUser;
    notifyListeners();
  }

// ログアウト
  Future<void> logout({required BuildContext context}) async {
    try {
      await FirebaseAuth.instance.signOut();
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("ログアウトしました")));
      setCurrentUser();
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.message!)));
    }
  }
}
