import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final mainProvider = ChangeNotifierProvider<MainModel>((ref) => MainModel());

class MainModel extends ChangeNotifier {
  User? currentUser = null;
}
