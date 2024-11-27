import 'package:count_me/core/components/index.dart';
import '../../../../core/constants/app/app_colors.dart';
import '../widget/splash_body_widget.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      linearGradient: AppColors.linearGradient,
      body: SplashBodyWidget(),
    );
  }
}
