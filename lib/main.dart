import 'view/auth/register/view/register_view.dart';
import 'core/init/theme/app_theme_light.dart';
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
      theme: AppThemeLight.instance.theme,
      home: RegisterView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
