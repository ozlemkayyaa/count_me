// ignore_for_file: avoid_print, unused_field, unused_local_variable
import 'package:count_me/core/constants/app/index.dart';
import 'package:count_me/view/auth/long_onboarding/viewModel/bloc/long_onboarding_bloc.dart';
import 'package:count_me/view/auth/long_onboarding/viewModel/bloc/long_onboarding_event.dart';
import 'package:count_me/view/auth/long_onboarding/viewModel/bloc/long_onboarding_state.dart';
import 'package:count_me/view/auth/long_onboarding/widget/custom_picker.dart';
import 'package:count_me/view/auth/long_onboarding/widget/onboarding_page_template.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HeightSelect extends StatefulWidget {
  final PageController pageController;
  final VoidCallback goToNextPage;

  const HeightSelect({
    super.key,
    required this.pageController,
    required this.goToNextPage,
  });

  @override
  State<HeightSelect> createState() => _HeightSelectState();
}

class _HeightSelectState extends State<HeightSelect> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LongOnboardingBloc, LongOnboardingState>(
      builder: (context, state) {
        if (state is LongOnboardingInProgress) {
          double? selectedHeight = state.userOnboardingModel.height;

          return OnboardingPageTemplate(
            heightSizedBox: true,
            question: AppStrings.question4,
            body: CustomPicker(
              title: AppStrings.cm,
              valueRange: List.generate(121, (index) => 100 + index),
              initialValue: 160,
              onValueChanged: (selectedHeight) {
                context.read<LongOnboardingBloc>().add(
                      UpdateProfileEvent({'height': selectedHeight.toDouble()}),
                    );
                print("Seçilen Boy: $selectedHeight");
              },
            ),
          );
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
