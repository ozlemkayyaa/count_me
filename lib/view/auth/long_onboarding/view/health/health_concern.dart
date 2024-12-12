import 'package:count_me/core/components/outlinedButton/custom_outlined_button.dart';
import 'package:count_me/core/constants/app/index.dart';
import 'package:count_me/core/constants/enums/icon_enum.dart';
import 'package:count_me/view/auth/long_onboarding/viewModel/bloc/long_onboarding_bloc.dart';
import 'package:count_me/view/auth/long_onboarding/viewModel/bloc/long_onboarding_event.dart';
import 'package:count_me/view/auth/long_onboarding/viewModel/bloc/long_onboarding_state.dart';
import 'package:count_me/view/auth/long_onboarding/widget/onboarding_page_template.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HealthConcern extends StatelessWidget {
  final PageController pageController;
  final VoidCallback goToNextPage;
  const HealthConcern(
      {super.key, required this.pageController, required this.goToNextPage});

  static const List<Map<String, dynamic>> healthOptions = [
    {
      'title': AppStrings.any,
      'value': AppStrings.any,
    },
    {
      'title': AppStrings.hypertansion,
      'value': AppStrings.hypertansion,
    },
    {
      'title': AppStrings.cholesterol,
      'value': AppStrings.cholesterol,
    },
    {
      'title': AppStrings.diabetes,
      'value': AppStrings.diabetes,
    },
    {
      'title': AppStrings.other,
      'value': AppStrings.other,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LongOnboardingBloc, LongOnboardingState>(
      builder: (context, state) {
        if (state is LongOnboardingInProgress) {
          List<String>? selectedHealthConcerns =
              state.userOnboardingModel.healthConcerns;
          return OnboardingPageTemplate(
            question: AppStrings.question10,
            body: Column(
              children: healthOptions.map((option) {
                return CustomOutlinedButton(
                  useSpacer: true,
                  padding: EdgeInsets.only(left: 40),
                  trailingIcon: IconEnum.check.toImage(width: 25, height: 25),
                  usePaddingForLeadingIcon: true,
                  title: option['title'],
                  isSelected: selectedHealthConcerns == option['value'],
                  onPressed: () {
                    if (selectedHealthConcerns?.contains(option['value']) ??
                        false) {
                      // Eğer zaten seçilmişse, kaldır
                      selectedHealthConcerns?.remove(option['value']);
                    } else {
                      // Değilse, listeye ekle
                      selectedHealthConcerns = [
                        ...?selectedHealthConcerns,
                        option['value']
                      ];
                    }
                    // Bloc'a güncel listeyi gönder
                    context.read<LongOnboardingBloc>().add(UpdateProfileEvent(
                          {'healthConcerns': selectedHealthConcerns},
                        ));
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
