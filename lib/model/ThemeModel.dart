import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeModel with ChangeNotifier {
  ThemeData themeData;
  ThemeType currentType;

  ThemeModel(ThemeType type) {
    this.currentType = type;
    if (currentType == ThemeType.dark) {
      themeData = ThemeData.dark();
    } else {
      themeData = ThemeData.light();
    }
  }

  void reverse() {
    if (currentType == ThemeType.dark) {
      _update(ThemeType.light);
    } else {
      _update(ThemeType.dark);
    }
  }

  void _update(ThemeType type) {
    this.currentType = type;
    if (currentType == ThemeType.dark) {
      themeData = ThemeData.dark();
    } else {
      themeData = ThemeData.light();
    }
    notifyListeners();
  }
}

enum ThemeType { light, dark }
