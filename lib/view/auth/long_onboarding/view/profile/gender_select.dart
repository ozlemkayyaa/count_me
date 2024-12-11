import 'package:count_me/core/components/outlinedButton/custom_outlined_button.dart';
import 'package:count_me/core/constants/app/index.dart';
import 'package:count_me/core/constants/enums/icon_enum.dart';
import 'package:count_me/view/auth/long_onboarding/viewModel/bloc/long_onboarding_bloc.dart';
import 'package:count_me/view/auth/long_onboarding/viewModel/bloc/long_onboarding_event.dart';
import 'package:count_me/view/auth/long_onboarding/viewModel/bloc/long_onboarding_state.dart';
import 'package:count_me/view/auth/long_onboarding/widget/long_onboarding_templete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GenderSelect extends StatelessWidget {
  final PageController pageController;
  final VoidCallback goToNextPage;
  const GenderSelect(
      {super.key, required this.pageController, required this.goToNextPage});

  static const List<Map<String, dynamic>> genderOptions = [
    {
      'title': AppStrings.women,
      'value': AppStrings.women,
      'icon': IconEnum.women
    },
    {'title': AppStrings.man, 'value': AppStrings.man, 'icon': IconEnum.men},
    {
      'title': AppStrings.disclose,
      'value': AppStrings.disclose,
      'icon': IconEnum.disclose
    },
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LongOnboardingBloc, LongOnboardingState>(
      builder: (context, state) {
        if (state is LongOnboardingInProgress) {
          // Seçilen cinsiyeti bir değişkende tuttuk
          String? selectedGender = state.userOnboardingModel.gender;
          return OnboardingPageTemplate(
            question: AppStrings.question2,
            body: Column(
              children: genderOptions.map((option) {
                return CustomOutlinedButton(
                  leadingIcon:
                      option['icon'].toImage(width: 30.0, height: 30.0),
                  usePaddingForLeadingIcon: true,
                  title: option['title'],
                  isSelected: selectedGender == option['value'],
                  onPressed: () {
                    selectedGender =
                        option['value']; // Seçilen cinsiyet güncellendi
                    context
                        .read<LongOnboardingBloc>()
                        .add(UpdateProfileEvent({'gender': selectedGender}));
                  },
                );
              }).toList(),
            ),
          );
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
