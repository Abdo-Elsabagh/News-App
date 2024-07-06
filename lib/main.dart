import 'package:flutter/material.dart';
import 'package:insights_news/core/app_colors.dart';
import 'package:insights_news/splach_view.dart';

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
        theme: ThemeData(
            appBarTheme: AppBarTheme(color: AppColors.sacffoldBG, elevation: 0),
            scaffoldBackgroundColor: AppColors.sacffoldBG,
            iconTheme: IconThemeData(color: AppColors.grey),
            inputDecorationTheme: InputDecorationTheme(
              labelStyle: TextStyle(color: AppColors.grey),
              suffixIconColor: AppColors.lomanda,
              prefixIconColor: AppColors.lomanda,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                // borderSide: BorderSide(color: AppColors.white)
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                // borderSide: BorderSide(color: AppColors.lomanda)
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                // borderSide: const BorderSide(color: Colors.red)
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                // borderSide: const BorderSide(color: Colors.red)
              ),
            )),
        home: const SplachView());
  }
}
