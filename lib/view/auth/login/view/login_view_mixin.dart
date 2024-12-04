import 'package:flutter/material.dart';

mixin LoginViewMixin {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void dispose() {
    // email
    emailController.clear();
    emailController.dispose();

    // password
    passwordController.clear();
    passwordController.dispose();
  }
}
