import 'package:count_me/core/base/cubit/generic_cubit_state.dart';
import 'package:count_me/core/components/outlinedButton/custom_outlined_button.dart';
import 'package:count_me/core/constants/app/index.dart';
import 'package:count_me/core/constants/enums/icon_enum.dart';
import 'package:count_me/core/model/user/user_model.dart';
import 'package:count_me/view/auth/long_onboarding/widget/onboarding_page_template.dart';
import 'package:count_me/view/auth/long_onboarding/cubit/long_onboarding_cubit.dart';
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
    return BlocBuilder<LongOnboardingCubit, GenericCubitState<UserModel>>(
      builder: (context, state) {
        if (state.status == Status.initial || state.status == Status.success) {
          // UserModel'e erişim
          final userModel = state.data;

          List<String>? selectedHealthConcerns = userModel?.healthConditions;
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
                    // Cubit'e güncel listeyi gönder
                    context.read<LongOnboardingCubit>().setupInitialUserProfile(
                        {'healthConditions': selectedHealthConcerns});
                  },
                );
              }).toList(),
            ),
          );
        } else if (state.status == Status.loading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state.status == Status.failure) {
          return Center(
            child: Text(
              "Bir hata oluştu: ${state.error ?? "Bilinmeyen hata"}",
              style: const TextStyle(color: Colors.red),
            ),
          );
        } else {
          return Center(
              child: Text("Hata oluştu: ${state.error ?? "Bilinmeyen hata"}"));
        }
      },
    );
  }
}
