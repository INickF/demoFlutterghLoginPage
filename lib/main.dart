import 'package:flutter/material.dart';
import 'package:ghloginexpample/pages/login_page.dart';
import 'package:ghloginexpample/static/main_colors.dart';

void main() {
  runApp(const LoginDemoApp());
}

class LoginDemoApp extends StatelessWidget {
  const LoginDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GitHub login Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: MainColors.blue),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}
