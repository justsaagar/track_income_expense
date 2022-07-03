import 'package:flutter/material.dart';
import 'package:income_expense_track/constant/color_constant.dart';

class AppTheme {
  /// Declare all themes here.
  /// Like, Dark theme, Light theme, theme color, fontFamily, etc.

  //     ======================= Font Family =======================     //
  static const String defaultFont = 'Inter';

  static ThemeData themeData = ThemeData(
    scaffoldBackgroundColor: ColorConstant.darkGreen,
    fontFamily: defaultFont,
    dividerColor: ColorConstant.transparent,
    elevatedButtonTheme: elevatedButtonThemeData,
    appBarTheme: appBarTheme,
  );

  static ElevatedButtonThemeData elevatedButtonThemeData =
      ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(ColorConstant.darkBlue),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(horizontal: 26, vertical: 10)),
      elevation: MaterialStateProperty.all(0),
    ),
  );

  static AppBarTheme appBarTheme = const AppBarTheme(
    centerTitle: true,
    color: ColorConstant.darkBlue,
    elevation: 0,
    titleTextStyle: TextStyle(
      fontFamily: defaultFont,
      fontSize: 18,
      color: ColorConstant.white,
      fontWeight: FontWeight.w500,
    ),
  );
}
