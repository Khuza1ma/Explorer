import 'package:explorer/pages/home.dart';
import 'package:explorer/utils/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xpense',
      theme: ThemeData(
        fontFamily: 'HindSiliguri',
        brightness: Brightness.light,
        primaryColor: AppColors.kFF7235
      ),
      home: const HomeScreen()
    );
  }
}
