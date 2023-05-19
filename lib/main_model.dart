import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';

final mainProvider = ChangeNotifierProvider<MainModel>((ref) => MainModel());

class MainModel extends ChangeNotifier {
  Future<void> createUser({required BuildContext context}) async {
    var uuid = Uuid();
    var v4 = uuid.v4();
    final Map<String, dynamic> userData = {
      'name': 'Torememo',
      "uid": v4,
    };
    await FirebaseFirestore.instance.collection('users').doc(v4).set(userData);
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("データを追加しました")));
    notifyListeners();
  }
}
