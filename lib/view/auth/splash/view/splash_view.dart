import 'package:count_me/core/constants/app/app_colors.dart';
import 'package:count_me/core/components/scaffold/custom_scaffold.dart';
import 'package:count_me/view/auth/splash/widget/splash_body_widget.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return customScaffold(
      linearGradient: AppColors.linearGradient,
      body: SplashBodyWidget(),
    );
  }
}
