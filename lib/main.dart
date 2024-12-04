import 'package:count_me/core/constants/app/index.dart';
import 'package:count_me/core/init/navigation/navigation_service.dart';
import 'package:count_me/view/auth/login/view/login_view.dart';
//import 'package:count_me/view/auth/onboarding/view/onboarding_view.dart';
//import 'package:count_me/view/auth/register/view/register_view.dart';
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
      navigatorKey: NavigationService.instance.navigatorKey,
      title: AppConstants.APP_NAME,
      theme: AppThemeLight.instance.theme,
      home: LoginView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
