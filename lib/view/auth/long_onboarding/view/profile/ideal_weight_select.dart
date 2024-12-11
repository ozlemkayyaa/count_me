// ignore_for_file: avoid_print, unused_local_variable

import 'package:flutter/material.dart';
import 'package:count_me/core/constants/app/index.dart';
import 'package:count_me/view/auth/long_onboarding/viewModel/bloc/long_onboarding_bloc.dart';
import 'package:count_me/view/auth/long_onboarding/viewModel/bloc/long_onboarding_event.dart';
import 'package:count_me/view/auth/long_onboarding/viewModel/bloc/long_onboarding_state.dart';
import 'package:count_me/view/auth/long_onboarding/widget/custom_picker.dart';
import 'package:count_me/view/auth/long_onboarding/widget/long_onboarding_templete.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IdealWeightSelect extends StatefulWidget {
  final PageController pageController;
  final VoidCallback goToNextPage;

  const IdealWeightSelect({
    super.key,
    required this.pageController,
    required this.goToNextPage,
  });

  @override
  State<IdealWeightSelect> createState() => _IdealWeightSelectState();
}

class _IdealWeightSelectState extends State<IdealWeightSelect> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LongOnboardingBloc, LongOnboardingState>(
      builder: (context, state) {
        if (state is LongOnboardingInProgress) {
          double? selectedWeight = state.userOnboardingModel.targetWeight;

          return OnboardingPageTemplate(
            heightSizedBox: true,
            question: AppStrings.question6,
            body: CustomPicker(
              title: AppStrings.kg,
              valueRange: List.generate(201, (index) => 30 + index),
              initialValue: 60,
              onValueChanged: (selectedWeight) {
                context.read<LongOnboardingBloc>().add(
                      UpdateProfileEvent(
                        {'targetWeight': selectedWeight.toDouble()},
                      ),
                    );
                print("Seçilen İdeal Kilo: $selectedWeight");
              },
            ),
          );
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
