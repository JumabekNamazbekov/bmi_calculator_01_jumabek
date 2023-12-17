import 'package:bmi_calculator_01_jumabek/config/thema.dart';
import 'package:bmi_calculator_01_jumabek/pages/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI APP',
      theme: lightTheme,
      darkTheme: darktTheme,
      home: const MyHomePage(),
    );
  }
}


