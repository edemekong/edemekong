import 'package:flutter/material.dart';
import '../../constants/app_fonts.dart';
import './colors.dart';

class AppTextThemes {
  static const double headline1Size = 34;
  static const double headline2Size = 28;
  static const double headline3Size = 22;
  static const double headline4Size = 20;
  static const double headline5Size = 17;
  static const double headline6Size = 16;
  static const double subtile1Size = 15;
  static const double subtile2Size = 13;
  static const double body1Size = 17;
  static const double body2Size = 14.5;
  static const double buttonSize = 16;
  static const double caption = 12;
  static const double overline = 12.5;

  static const TextTheme mobileTextThemeLight = TextTheme(
    displayLarge: TextStyle(
      fontFamily: AppFonts.SFPro,
      fontSize: headline1Size,
      color: AppColors.black,
      fontWeight: FontWeight.w400,
    ),
    displayMedium: TextStyle(
      fontFamily: AppFonts.SFPro,
      fontSize: headline2Size,
      color: AppColors.black,
      fontWeight: FontWeight.w600,
    ),
    displaySmall: TextStyle(
      fontFamily: AppFonts.SFPro,
      fontSize: headline3Size,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
    ),
    headlineMedium: TextStyle(
      fontFamily: AppFonts.SFPro,
      fontSize: headline4Size,
      color: AppColors.black,
      fontWeight: FontWeight.w400,
    ),
    headlineSmall: TextStyle(
      fontFamily: AppFonts.SFPro,
      fontSize: headline5Size,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
    ),
    titleLarge: TextStyle(
      fontFamily: AppFonts.SFPro,
      fontSize: headline6Size,
      color: AppColors.black,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: TextStyle(
      fontFamily: AppFonts.SFPro,
      fontSize: subtile1Size,
      color: AppColors.black,
      fontWeight: FontWeight.w400,
    ),
    titleSmall: TextStyle(
      fontFamily: AppFonts.SFPro,
      fontSize: subtile2Size,
      color: AppColors.black,
      fontWeight: FontWeight.w700,
    ),
    bodyLarge: TextStyle(
      fontFamily: AppFonts.SFPro,
      fontSize: body1Size,
      color: AppColors.grey,
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: TextStyle(
      fontFamily: AppFonts.SFPro,
      fontSize: body2Size,
      color: AppColors.black,
      fontWeight: FontWeight.w400,
    ),
    labelLarge: TextStyle(
      fontFamily: AppFonts.SFPro,
      fontSize: buttonSize,
      color: AppColors.white,
      fontWeight: FontWeight.w400,
    ),
    bodySmall: TextStyle(
      fontFamily: AppFonts.SFPro,
      fontSize: caption,
      color: AppColors.black,
      fontWeight: FontWeight.w400,
    ),
    labelSmall: TextStyle(
      fontFamily: AppFonts.SFPro,
      fontSize: overline,
      color: AppColors.black,
      fontWeight: FontWeight.w400,
    ),
  );

  static const TextTheme mobileTextThemeDark = TextTheme(
    displayLarge: TextStyle(
      fontFamily: AppFonts.SFPro,
      fontSize: headline1Size,
      color: AppColors.white,
      fontWeight: FontWeight.w400,
    ),
    displayMedium: TextStyle(
      fontFamily: AppFonts.SFPro,
      fontSize: headline2Size,
      color: AppColors.white,
      fontWeight: FontWeight.w600,
    ),
    displaySmall: TextStyle(
      fontFamily: AppFonts.SFPro,
      fontSize: headline3Size,
      color: AppColors.white,
      fontWeight: FontWeight.w500,
    ),
    headlineMedium: TextStyle(
      fontFamily: AppFonts.SFPro,
      fontSize: headline4Size,
      color: AppColors.white,
      fontWeight: FontWeight.w400,
    ),
    headlineSmall: TextStyle(
      fontFamily: AppFonts.SFPro,
      fontSize: headline5Size,
      color: AppColors.white,
      fontWeight: FontWeight.w500,
    ),
    titleLarge: TextStyle(
      fontFamily: AppFonts.SFPro,
      fontSize: headline6Size,
      color: AppColors.lightGrey,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: TextStyle(
      fontFamily: AppFonts.SFPro,
      fontSize: subtile1Size,
      color: AppColors.white,
      fontWeight: FontWeight.w400,
    ),
    titleSmall: TextStyle(
      fontFamily: AppFonts.SFPro,
      fontSize: subtile2Size,
      color: AppColors.lightGrey,
      fontWeight: FontWeight.w700,
    ),
    bodyLarge: TextStyle(
      fontFamily: AppFonts.SFPro,
      fontSize: body1Size,
      color: AppColors.lightGrey,
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: TextStyle(
      fontFamily: AppFonts.SFPro,
      fontSize: body2Size,
      color: AppColors.white,
      fontWeight: FontWeight.w400,
    ),
    labelLarge: TextStyle(
      fontFamily: AppFonts.SFPro,
      fontSize: buttonSize,
      color: AppColors.white,
      fontWeight: FontWeight.w400,
    ),
    bodySmall: TextStyle(
      fontFamily: AppFonts.SFPro,
      fontSize: caption,
      color: AppColors.white,
      fontWeight: FontWeight.w400,
    ),
    labelSmall: TextStyle(
      fontFamily: AppFonts.SFPro,
      fontSize: overline,
      color: AppColors.white,
      fontWeight: FontWeight.w400,
    ),
  );
}
