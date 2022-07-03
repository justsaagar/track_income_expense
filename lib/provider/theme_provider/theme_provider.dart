import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:income_expense_track/constant/color_constant.dart';
import 'package:income_expense_track/widgets/app_theme.dart';

class ThemeProvider extends ChangeNotifier {
  bool isDarkMode = false;
  ThemeData? selectedThemeData;
  ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: ColorConstant.darkBlue,
    elevatedButtonTheme: AppTheme.elevatedButtonThemeData,
  );
  ThemeData darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: ColorConstant.black,
    elevatedButtonTheme: AppTheme.elevatedButtonThemeData,
  );

  ThemeProvider({bool isDarkMode = false}) {
    Brightness brightness = SchedulerBinding.instance.window.platformBrightness;
    this.isDarkMode = brightness == Brightness.dark;
    selectedThemeData = this.isDarkMode ? darkTheme : lightTheme;
  }
}
