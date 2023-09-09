// ignore_for_file: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member

import 'dart:ui';
import 'package:edemekong/constants/local_storage_keys.dart';
import 'package:edemekong/data/services/local_storage_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'theme_data.dart';

final appThemeProvider = Provider<AppTheme>((ref) {
  return AppTheme(ref);
});

class AppTheme {
  final Ref ref;

  AppTheme(this.ref);

  LocalStorageService get storageService => ref.read(localStorageProvider);
  String? theme;

  ValueNotifier<ThemeData> themeDataNotifier = ValueNotifier<ThemeData>(AppThemeData.themeDark);

  bool isLightMode(BuildContext context) => Theme.of(context).brightness == Brightness.light;

  void setThemeFromLocalStorage() async {
    storageService.getString(LocalStorageKeys.THEME_KEY).then((theme) {
      this.theme = theme ?? PlatformDispatcher.instance.platformBrightness.name;

      if (theme == "light") {
        themeDataNotifier.value = AppThemeData.themeLight;
      } else if (theme == "dark") {
        themeDataNotifier.value = AppThemeData.themeDark;
      } else {
        // get system theme
        final theme = PlatformDispatcher.instance.platformBrightness;
        bool isDarkMode = theme == Brightness.dark;
        themeDataNotifier.value = isDarkMode ? AppThemeData.themeDark : AppThemeData.themeLight;
        storageService.setString(LocalStorageKeys.THEME_KEY, "system");
      }
      themeDataNotifier.notifyListeners();
    });
  }

  void changeTheme(ThemeData data) {
    themeDataNotifier.value = data;
    themeDataNotifier.notifyListeners();
    storageService.setString(LocalStorageKeys.THEME_KEY, theme ?? data.brightness.name);
  }

  void changeThemeFromName(String theme) {
    this.theme = theme;
    themeDataNotifier.value = (() {
      switch (theme) {
        case "light":
          return AppThemeData.themeLight;
        case "dark":
          return AppThemeData.themeDark;
        default:
          final theme = PlatformDispatcher.instance.platformBrightness;
          bool isDarkMode = theme == Brightness.dark;
          return isDarkMode ? AppThemeData.themeDark : AppThemeData.themeLight;
      }
    })();

    storageService.setString(LocalStorageKeys.THEME_KEY, theme);
  }
}
