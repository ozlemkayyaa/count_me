import 'package:count_me/core/constants/app/index.dart';
import 'package:count_me/view/auth/long_onboarding/viewModel/bloc/long_onboarding_bloc.dart';
import 'package:count_me/view/auth/long_onboarding/viewModel/bloc/long_onboarding_state.dart';
import 'package:count_me/view/auth/long_onboarding/widget/long_onboarding_templete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NameInput extends StatelessWidget {
  final PageController pageController;
  final VoidCallback goToNextPage;
  const NameInput(
      {super.key, required this.pageController, required this.goToNextPage});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LongOnboardingBloc, LongOnboardingState>(
      builder: (context, state) {
        return OnboardingPageTemplate(
            question: AppStrings.question7,
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36.0),
              child: TextFormField(
                decoration: InputDecoration(labelText: AppStrings.name),
              ),
            ));
      },
    );
  }
}
