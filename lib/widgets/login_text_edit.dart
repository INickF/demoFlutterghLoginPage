import 'package:flutter/material.dart';
import 'package:ghloginexpample/static/main_colors.dart';

class LoginTextEdit extends StatelessWidget {
  const LoginTextEdit({
    super.key,
    required this.emailController,
  });

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: emailController,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 6),
        filled: true,
        fillColor: MainColors.white,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: MainColors.dirtyGray, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: MainColors.blue, width: 3),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
