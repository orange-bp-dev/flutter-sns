import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:udemy_flutter_sns/domain/firestore_user/firestore_user.dart';

final searchProvider =
    ChangeNotifierProvider<SearchModel>((ref) => SearchModel());

class SearchModel extends ChangeNotifier {
  List<FirestoreUser> users = [];

  SearchModel() {
    init();
  }

  Future<void> init() async {
    final QuerySnapshot<Map<String, dynamic>> gshot =
        await FirebaseFirestore.instance.collection("users").get();
    final List<DocumentSnapshot<Map<String, dynamic>>> docs = gshot.docs;
    users = docs.map((e) => FirestoreUser.fromJson(e.data()!)).toList();
    notifyListeners();
  }
}
