import 'package:count_me/app/components/constants/app_colors.dart';
import 'package:count_me/app/components/widgets/custom_scaffold.dart';
import 'package:count_me/app/presentation/splash/widget/splash_body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return customScaffold(
      linearGradient: AppColors.linearGradient,
      body: splashBody(context),
    );
  }
}
