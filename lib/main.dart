import 'package:flutter/material.dart';
import 'package:flutter_application_4/core/app_colors.dart';
import 'package:flutter_application_4/splach_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: AppColors.sacffoldBG),
        home: const SplachView());
  }
}
