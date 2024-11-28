import 'package:count_me/core/base/view/base_view.dart';
import 'package:count_me/view/auth/onboarding/viewModel/onboarding_view_model.dart';

import '../../../../core/components/index.dart';
import '../widget/onboarding_body_widget.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModel: OnboardingViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (BuildContext context, OnboardingViewModel viewModel) =>
          CustomScaffold(
        body: SingleChildScrollView(
          child: OnboardingBodyWidget(),
        ),
      ),
    );
  }
}
