import 'package:flutter/material.dart';

class RegisterViewModel extends ChangeNotifier {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
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
    super.dispose();
  }
}
