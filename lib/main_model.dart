import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final mainProvider = ChangeNotifierProvider<MainModel>((ref) => MainModel());

class MainModel extends ChangeNotifier {
  int counter = 0;
  final Map<String, dynamic> userData = {
    'name': 'Torememo',
    'age': 20,
  };

  Future<void> createUser({required BuildContext context}) async {
    await FirebaseFirestore.instance.collection('users').doc().set(userData);
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("データを追加しました")));
    counter++;
    notifyListeners();
  }
}
