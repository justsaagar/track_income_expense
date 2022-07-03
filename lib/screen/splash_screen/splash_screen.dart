import 'package:flutter/material.dart';
import 'package:income_expense_track/widgets/app_logs.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    logs('Current screen --> $runtimeType');
    return const Scaffold();
  }
}
