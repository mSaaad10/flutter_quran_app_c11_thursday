import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  String currentLanguage = 'en';
  ThemeMode currentThemeMode = ThemeMode.light;

  void changeLanguage(String newLanguage) {
    if (newLanguage == currentLanguage) {
      return;
    }
    currentLanguage = newLanguage;
    notifyListeners();
  }

  void changeThemeMode(ThemeMode newTheme) {
    if (newTheme == currentThemeMode) {
      return;
    }
    currentThemeMode = newTheme;
    notifyListeners();
  }

  String getBackgroundImagePath() {
    return currentThemeMode == ThemeMode.light
        ? 'assets/images/main_background.png'
        : 'assets/images/main_background_dark.png';
  }
}
