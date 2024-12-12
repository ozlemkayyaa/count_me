// ignore_for_file: avoid_print

import 'package:count_me/core/constants/app/app_colors.dart';
import 'package:count_me/core/constants/app/app_strings.dart';
import 'package:count_me/view/auth/long_onboarding/viewModel/bloc/long_onboarding_bloc.dart';
import 'package:count_me/view/auth/long_onboarding/viewModel/bloc/long_onboarding_event.dart';
import 'package:count_me/view/auth/long_onboarding/viewModel/bloc/long_onboarding_state.dart';
import 'package:count_me/view/auth/long_onboarding/widget/onboarding_page_template.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BirthdaySelect extends StatelessWidget {
  final PageController pageController;
  final VoidCallback goToNextPage;

  const BirthdaySelect({
    super.key,
    required this.pageController,
    required this.goToNextPage,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LongOnboardingBloc, LongOnboardingState>(
      builder: (context, state) {
        if (state is LongOnboardingInProgress) {
          DateTime? selectedDate = state.userOnboardingModel.birthDate;

          return OnboardingPageTemplate(
            question: AppStrings.question3,
            body: Column(
              children: [
                Flexible(
                  child: CupertinoDatePicker(
                    maximumYear: DateTime.now().year,
                    minimumYear: 1900,
                    itemExtent: 65,
                    backgroundColor: AppColors.whiteBackground,
                    mode: CupertinoDatePickerMode.date,
                    initialDateTime: selectedDate ?? DateTime.now(),
                    onDateTimeChanged: (DateTime pickedDate) {
                      context.read<LongOnboardingBloc>().add(
                            UpdateProfileEvent({'birthDate': pickedDate}),
                          );
                      print(
                          "Seçilen Tarih: ${pickedDate.day}/${pickedDate.month}/${pickedDate.year}");
                    },
                  ),
                ),
                SizedBox(height: 160),
              ],
            ),
          );
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
