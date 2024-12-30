import 'package:flutter/material.dart';

mixin RegisterViewMixin {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void dispose() {
    // name
    nameController.clear();
    nameController.dispose();

    // email
    emailController.clear();
    emailController.dispose();

    // password
    passwordController.clear();
    passwordController.dispose();
  }
}
