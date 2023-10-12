import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ghloginexpample/static/main_colors.dart';

import '../widgets/login_text_edit.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double maxBlocsWidth = 370;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/github-mark.png", scale: 3),
              const SizedBox(height: 20),
              const Text("Sign in to GitHub", style: TextStyle(fontSize: 32)),
              const SizedBox(height: 20),
              _buildBlockCred(min(deviceWidth * 0.9, maxBlocsWidth)),
              const SizedBox(height: 20),
              _buildBlockCreate(min(deviceWidth * 0.9, maxBlocsWidth)),
              const SizedBox(height: 60),
              _buildBottomButtons(),
            ],
          ),
        ),
      ),
    );
  }

  Container _buildBlockCred(double width) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: width,
      decoration: BoxDecoration(
        color: MainColors.lightGray,
        border: Border.all(
          color: MainColors.dirtyGray,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Username or email address",
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 10),
          LoginTextEdit(emailController: emailController),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Password",
                style: TextStyle(fontSize: 18),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot password?",
                  style: TextStyle(fontSize: 16, color: MainColors.lightblue),
                ),
              ),
            ],
          ),
          LoginTextEdit(emailController: passwordController),
          const SizedBox(height: 10),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: MainColors.green,
              minimumSize: const Size.fromHeight(40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              "Sign in",
              style: TextStyle(fontSize: 20, color: MainColors.white),
            ),
          ),
        ],
      ),
    );
  }

  Container _buildBlockCreate(double width) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      width: width,
      decoration: BoxDecoration(
        border: Border.all(
          color: MainColors.dirtyGray,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("New to GitHub?", style: TextStyle(fontSize: 18)),
          TextButton(
            onPressed: () {},
            child: Text(
              "Create an account",
              style: TextStyle(fontSize: 18, color: MainColors.lightblue),
            ),
          ),
        ],
      ),
    );
  }

  SingleChildScrollView _buildBottomButtons() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Terms",
              style: TextStyle(fontSize: 14, color: MainColors.lightblue),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Privacy",
              style: TextStyle(fontSize: 14, color: MainColors.lightblue),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Docs",
              style: TextStyle(fontSize: 14, color: MainColors.lightblue),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Contact GitHub Support",
              style: TextStyle(fontSize: 14, color: MainColors.gray),
            ),
          ),
        ],
      ),
    );
  }
}
