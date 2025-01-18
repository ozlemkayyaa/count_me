// ignore_for_file: avoid_print
import 'package:count_me/core/base/cubit/generic_cubit_state.dart';
import 'package:count_me/core/constants/app/app_colors.dart';
import 'package:count_me/core/constants/app/app_strings.dart';
import 'package:count_me/core/model/user/user_model.dart';
import 'package:count_me/view/auth/long_onboarding/widget/onboarding_page_template.dart';
import 'package:count_me/view/auth/long_onboarding/cubit/long_onboarding_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BirthdaySelect extends StatelessWidget {
  const BirthdaySelect({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LongOnboardingCubit, GenericCubitState<UserModel>>(
      builder: (context, state) {
        //* LOADING
        if (state.status == Status.loading) {
          return const Center(child: CircularProgressIndicator());
          //* FAILURE
        } else if (state.status == Status.failure) {
          return Center(
            child: Text(
              "Bir hata oluştu: ${state.error ?? "Bilinmeyen hata"}",
              style: const TextStyle(color: Colors.red),
            ),
          );
          //* INITAL AND SUCCESS
        } else if (state.status == Status.initial ||
            state.status == Status.success) {
          // UserModel'e erişim
          final userModel = state.data;

          // Mevcut doğum tarihi
          final selectedDate = userModel?.birthday;

          return OnboardingPageTemplate(
            question: AppStrings.question3,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 300,
                    width: double.infinity,
                    child: CupertinoDatePicker(
                      maximumYear: DateTime.now().year,
                      minimumYear: 1,
                      itemExtent: 65,
                      backgroundColor: AppColors.whiteBackground,
                      mode: CupertinoDatePickerMode.date,
                      initialDateTime: selectedDate ?? DateTime.now(),
                      onDateTimeChanged: (DateTime pickedDate) {
                        context
                            .read<LongOnboardingCubit>()
                            .setupInitialUserProfile({'birthday': pickedDate});
                        print(
                            "Seçilen Tarih: ${pickedDate.day}/${pickedDate.month}/${pickedDate.year}");
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        } else {
          return const Center(child: Text("Doğum tarihi yüklenemedi."));
        }
      },
    );
  }
}
