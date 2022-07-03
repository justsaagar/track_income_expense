import 'package:flutter/material.dart';
import 'package:income_expense_track/constant/string_constant.dart';
import 'package:income_expense_track/provider/theme_provider/theme_provider.dart';
import 'package:income_expense_track/screen/splash_screen/splash_screen.dart';
import 'package:income_expense_track/widgets/app_logs.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

void main() {
  runApp(
    ChangeNotifierProvider<ThemeProvider>(
      create: (BuildContext context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  List<SingleChildWidget> providers = [];

  @override
  Widget build(BuildContext context) {
    logs('Current screen --> $runtimeType');
    return MultiProvider(
      providers: providers,
      child: Consumer<ThemeProvider>(
        builder: (BuildContext context, ThemeProvider themeProvider, _) {
          return MaterialApp(
            title: StringConstant.appTitle,
            debugShowCheckedModeBanner: false,
            theme: themeProvider.selectedThemeData,
            darkTheme: themeProvider.darkTheme,
            home: const SplashScreen(),
          );
        },
      ),
    );
  }
}
