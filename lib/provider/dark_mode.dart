import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  ThemeMode _themeMode;

  ThemeChanger(this._themeMode);

  getTheme() => _themeMode;

  setTheme(ThemeMode theme) {
    _themeMode = theme;
    notifyListeners();
  }
}
