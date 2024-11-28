import 'package:count_me/core/base/view/base_view.dart';
import 'package:count_me/core/components/index.dart';
import 'package:count_me/view/auth/splash/viewModel/splash_view_model.dart';
import '../../../../core/constants/app/app_colors.dart';
import '../widget/splash_body_widget.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModel: SplashViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (BuildContext context, SplashViewModel viewModel) =>
          CustomScaffold(
        linearGradient: AppColors.linearGradient,
        body: SplashBodyWidget(),
      ),
    );
  }
}
