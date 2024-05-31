import 'package:cake_app_ui_mobile/HomePage.dart';
import 'package:cake_app_ui_mobile/SplashScreen.dart';
import 'package:cake_app_ui_mobile/DetailPage.dart';
import 'package:flutter/material.dart';

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
      routes: {
        "HomePage": (context) => HomePage(),
        "DetailPage": (context) => DetailPage(),
      },
      home: SplashScreen(),
    );
  }
}