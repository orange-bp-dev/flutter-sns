import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:udemy_flutter_sns/constants/strings.dart';

final themeProvider = ChangeNotifierProvider((ref) => ThemeModel());

class ThemeModel extends ChangeNotifier {
  late SharedPreferences preferences;
  bool isDarkMode = true;

  ThemeModel() {
    init();
  }

  Future<void> init() async {
    preferences = await SharedPreferences.getInstance();
    final foo = preferences.getBool(isDarkThemePrefsKey);
    if (foo != null) isDarkMode = foo;
    notifyListeners();
  }

  void setIsDarkTheme({required bool value}) async {
    isDarkMode = value;
    await preferences.setBool(isDarkThemePrefsKey, value);
    notifyListeners();
  }
}
