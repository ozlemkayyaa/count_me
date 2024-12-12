import 'package:count_me/core/base/state/base_state.dart';
import 'package:count_me/core/base/view/base_view_bloc.dart';
import 'package:count_me/core/components/index.dart';
import 'package:count_me/core/constants/app/app_colors.dart';
import 'package:count_me/view/auth/long_onboarding/view/activity/activity_group.dart';
import 'package:count_me/view/auth/long_onboarding/view/health/health_group.dart';
import 'package:count_me/view/auth/long_onboarding/view/profile/profile_group.dart';
import 'package:count_me/view/auth/long_onboarding/viewModel/bloc/long_onboarding_bloc.dart';
import 'package:flutter/material.dart';

class LongOnboardingView extends StatefulWidget {
  const LongOnboardingView({super.key});

  @override
  State<LongOnboardingView> createState() => _LongOnboardingViewState();
}

class _LongOnboardingViewState extends BaseState<LongOnboardingView> {
  final PageController _groupController = PageController();

  void _goToNextGroup() {
    _groupController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BaseView(
      bloc: LongOnboardingBloc(),
      onPageBuilder: (context, bloc, state) {
        return CustomScaffold(
          appBar: AppBar(
            backgroundColor: AppColors.whiteBackground,
            automaticallyImplyLeading: true,
          ),
          body: PageView(
            controller: _groupController,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              ProfileGroup(onNextGroup: _goToNextGroup),
              ActivityGroup(onNextGroup: _goToNextGroup),
              HealthGroup(onNextGroup: _goToNextGroup),
              // const PlanGroup(),
            ],
          ),
        );
      },
    );
  }
}
