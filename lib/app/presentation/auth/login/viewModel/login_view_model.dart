import 'package:flutter/material.dart';

class LoginViewModel extends ChangeNotifier {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    // email
    emailController.clear();
    emailController.dispose();

    // password
    passwordController.clear();
    passwordController.dispose();
    super.dispose();
  }
}
