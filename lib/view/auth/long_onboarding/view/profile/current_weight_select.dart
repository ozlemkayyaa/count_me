// ignore_for_file: avoid_print, unused_field, unused_local_variable
import 'package:count_me/core/constants/app/index.dart';
import 'package:count_me/view/auth/long_onboarding/viewModel/bloc/long_onboarding_bloc.dart';
import 'package:count_me/view/auth/long_onboarding/viewModel/bloc/long_onboarding_event.dart';
import 'package:count_me/view/auth/long_onboarding/viewModel/bloc/long_onboarding_state.dart';
import 'package:count_me/view/auth/long_onboarding/widget/custom_picker.dart';
import 'package:count_me/view/auth/long_onboarding/widget/onboarding_page_template.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CurrentWeightSelect extends StatefulWidget {
  final PageController pageController;
  final VoidCallback goToNextPage;

  const CurrentWeightSelect({
    super.key,
    required this.pageController,
    required this.goToNextPage,
  });

  @override
  State<CurrentWeightSelect> createState() => _CurrentWeightSelectState();
}

class _CurrentWeightSelectState extends State<CurrentWeightSelect> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LongOnboardingBloc, LongOnboardingState>(
      builder: (context, state) {
        if (state is LongOnboardingInProgress) {
          double? selectedWeight = state.userOnboardingModel.currentWeight;

          return OnboardingPageTemplate(
            heightSizedBox: true,
            question: AppStrings.question5,
            body: CustomPicker(
              title: AppStrings.kg,
              valueRange: List.generate(201, (index) => 30 + index),
              initialValue: 60,
              onValueChanged: (selectedWeight) {
                context.read<LongOnboardingBloc>().add(
                      UpdateProfileEvent(
                          {'currentWeight': selectedWeight.toDouble()}),
                    );
                print("Seçilen Şuanki Kilo: $selectedWeight");
              },
            ),
          );
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
