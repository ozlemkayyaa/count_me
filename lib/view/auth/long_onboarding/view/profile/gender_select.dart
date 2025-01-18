import 'package:count_me/core/base/cubit/generic_cubit_state.dart';
import 'package:count_me/core/components/outlinedButton/custom_outlined_button.dart';
import 'package:count_me/core/constants/app/index.dart';
import 'package:count_me/core/constants/enums/icon_enum.dart';
import 'package:count_me/core/model/user/user_model.dart';
import 'package:count_me/view/auth/long_onboarding/widget/onboarding_page_template.dart';
import 'package:count_me/view/auth/long_onboarding/cubit/long_onboarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GenderSelect extends StatelessWidget {
  const GenderSelect({super.key});

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
    return BlocBuilder<LongOnboardingCubit, GenericCubitState<UserModel>>(
      builder: (context, state) {
        // * LOADING
        if (state.status == Status.loading) {
          return const Center(child: CircularProgressIndicator());
          // * FAILURE
        } else if (state.status == Status.failure) {
          return Center(
            child: Text(
              "Bir hata oluştu: ${state.error ?? "Bilinmeyen hata"}",
              style: const TextStyle(color: Colors.red),
            ),
          );
        }
        // * INITAL AND SUCCESS
        if (state.status == Status.initial || state.status == Status.success) {
          final userModel = state.data;
          // Seçilen cinsiyeti bir değişkende tuttuk
          String? selectedGender = userModel?.gender;

          return OnboardingPageTemplate(
            question: AppStrings.question2,
            body: SingleChildScrollView(
              child: Column(
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
                          .read<LongOnboardingCubit>()
                          .setupInitialUserProfile({'gender': selectedGender});
                    },
                  );
                }).toList(),
              ),
            ),
          );
          // * LOADING
        } else {
          return const Center(child: Text("Gender is not available."));
        }
      },
    );
  }
}
