import 'package:count_me/app/presentation/auth/register/view/register_view.dart';
import 'package:count_me/app/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Count Me IN',
      theme: AppTheme.theme,
      home: RegisterView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
