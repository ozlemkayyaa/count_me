import 'package:count_me/core/base/view/base_view.dart';
import 'package:count_me/core/components/index.dart';
import 'package:count_me/core/components/scaffold/custom_scaffold.dart';
import 'package:count_me/view/auth/onboarding/viewModel/onboarding_view_model.dart';
import 'package:count_me/view/auth/onboarding/widget/onboarding_body_widget.dart';
import 'package:flutter/material.dart';
import '../../../../core/base/state/base_state.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends BaseState<OnboardingView> {
  late OnboardingViewModel viewModel;
  @override
  Widget build(BuildContext context) {
    return BaseView<OnboardingViewModel>(
      viewModel: viewModel,
      onModelReady: (model) {
        viewModel = model;
      },
      onPageBuilder: (context, value) => customScaffold(
        body: SingleChildScrollView(
          child: OnboardingBodyWidget(),
        ),
      ),
    );
  }
}
