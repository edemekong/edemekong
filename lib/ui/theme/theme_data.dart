import 'package:edemekong/constants/app_fonts.dart';
import 'package:edemekong/ui/theme/spacings.dart';
import 'package:edemekong/ui/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'colors.dart';

class AppThemeData {
  static ThemeData themeLight = ThemeData(
    fontFamily: AppFonts.SFPro,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.white,
      foregroundColor: AppColors.white,
      iconTheme: IconThemeData(
        color: AppColors.cardDark,
        size: 24,
      ),
      toolbarHeight: 47,
    ),
    dividerTheme: const DividerThemeData(color: AppColors.dividerLight, thickness: AppSpacings.cardOutlineWidth),
    colorScheme: const ColorScheme(
      primary: AppColors.primaryColor,
      secondary: AppColors.black,
      onPrimary: AppColors.primaryColor,
      surface: AppColors.white,
      onSurface: AppColors.white,
      background: AppColors.lightBackground,
      brightness: Brightness.light,
      error: AppColors.red,
      onBackground: AppColors.lightBackground,
      onError: AppColors.red,
      onSecondary: AppColors.white,
    ),
    scaffoldBackgroundColor: AppColors.lightBackground,
    primaryColor: AppColors.primaryColor,
    buttonTheme: const ButtonThemeData(
      height: 47,
      splashColor: AppColors.lightGrey,
    ),
    hintColor: AppColors.white,
    indicatorColor: AppColors.white,
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.all(AppColors.cardDark),
      splashRadius: AppSpacings.cardPadding,
    ),
    iconTheme: const IconThemeData(
      color: AppColors.iconLight,
      size: 24,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.transparent,
      elevation: 0,
      showSelectedLabels: false,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      selectedItemColor: AppColors.black,
      unselectedItemColor: AppColors.grey,
      selectedIconTheme: IconThemeData(
        color: AppColors.black,
        size: 28,
      ),
      unselectedIconTheme: IconThemeData(
        color: AppColors.unselectedColorLight,
        size: 28,
      ),
    ),
    splashColor: AppColors.cardDark,
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColors.lightGrey,
      filled: true,
      hintStyle: AppTextThemes.mobileTextThemeLight.bodySmall?.copyWith(
        color: AppColors.unselectedColorLight,
      ),
      iconColor: AppColors.black,
      border: AppSpacings.outLineBorder.copyWith(
        borderSide: const BorderSide(
          color: AppColors.dividerLight,
        ),
      ),
      focusColor: AppColors.white,
      enabledBorder: AppSpacings.outLineBorder.copyWith(
        borderSide: const BorderSide(
          color: AppColors.dividerLight,
        ),
      ),
      errorBorder: AppSpacings.errorLineBorder,
      focusedErrorBorder: AppSpacings.errorLineBorder,
      focusedBorder: AppSpacings.outLineBorder.copyWith(
        borderSide: const BorderSide(
          color: AppColors.primaryColor,
        ),
      ),
      disabledBorder: AppSpacings.disabledOutLineBorder,
      isDense: true,
      contentPadding: const EdgeInsets.all(AppSpacings.cardPadding),
    ),
    primaryIconTheme: const IconThemeData(
      color: AppColors.black,
      size: 24,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    unselectedWidgetColor: AppColors.unselectedColorLight,
    canvasColor: AppColors.cardLight2,
    cardColor: AppColors.cardLight,
    textTheme: AppTextThemes.mobileTextThemeLight,
    primaryTextTheme: AppTextThemes.mobileTextThemeLight,
    textSelectionTheme: const TextSelectionThemeData(cursorColor: AppColors.blue),
  );

  static ThemeData themeDark = ThemeData(
    fontFamily: AppFonts.SFPro,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.cardLight,
      iconTheme: IconThemeData(
        color: AppColors.white,
        size: 24,
      ),
    ),
    dividerTheme: const DividerThemeData(color: AppColors.dividerDark, thickness: AppSpacings.cardOutlineWidth),
    colorScheme: const ColorScheme(
      primary: AppColors.primaryColor,
      secondary: AppColors.black,
      onPrimary: AppColors.primaryColor,
      surface: AppColors.lightGrey,
      onSurface: AppColors.lightGrey,
      background: AppColors.darkBackground,
      brightness: Brightness.dark,
      error: AppColors.red,
      onBackground: AppColors.darkBackground,
      onError: AppColors.red,
      onSecondary: AppColors.lightGrey,
    ),
    cardColor: AppColors.cardDark,
    scaffoldBackgroundColor: AppColors.darkBackground,
    primaryColor: AppColors.primaryColor,
    buttonTheme: const ButtonThemeData(
      height: 47,
      splashColor: AppColors.lightGrey,
    ),
    hintColor: AppColors.white,
    indicatorColor: AppColors.white,
    canvasColor: AppColors.cardDark2,
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.all(AppColors.cardLight),
      splashRadius: AppSpacings.cardPadding,
    ),
    iconTheme: const IconThemeData(
      color: AppColors.white,
      size: 24,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.transparent,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: AppColors.white,
      unselectedItemColor: AppColors.lightGrey,
      unselectedIconTheme: IconThemeData(
        color: AppColors.lightGrey,
        size: 28,
      ),
      selectedIconTheme: IconThemeData(
        color: AppColors.white,
        size: 28,
      ),
    ),
    splashColor: AppColors.lightGrey,
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColors.black,
      filled: true,
      hintStyle: AppTextThemes.mobileTextThemeLight.bodySmall?.copyWith(
        color: AppColors.unselectedColorDark,
      ),
      iconColor: AppColors.white,
      helperStyle: AppTextThemes.mobileTextThemeDark.bodyMedium,
      border: AppSpacings.outLineBorder.copyWith(
        borderSide: const BorderSide(
          color: AppColors.dividerDark,
        ),
      ),
      focusColor: AppColors.white,
      enabledBorder: AppSpacings.outLineBorder.copyWith(
        borderSide: const BorderSide(
          color: AppColors.dividerDark,
        ),
      ),
      errorBorder: AppSpacings.errorLineBorder,
      focusedBorder: AppSpacings.outLineBorder.copyWith(
        borderSide: const BorderSide(
          color: AppColors.primaryColor,
        ),
      ),
      disabledBorder: AppSpacings.disabledOutLineBorder,
      isDense: true,
      contentPadding: const EdgeInsets.all(AppSpacings.cardPadding),
    ),
    primaryIconTheme: const IconThemeData(
      color: AppColors.white,
      size: 24,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    unselectedWidgetColor: AppColors.unselectedColorDark,
    textTheme: AppTextThemes.mobileTextThemeDark,
    primaryTextTheme: AppTextThemes.mobileTextThemeDark,
    textSelectionTheme: const TextSelectionThemeData(cursorColor: AppColors.blue),
  );
}
