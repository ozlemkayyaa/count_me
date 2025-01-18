// ignore_for_file: avoid_print, unused_local_variable

import 'package:count_me/core/base/cubit/generic_cubit_state.dart';
import 'package:count_me/core/model/user/user_model.dart';
import 'package:count_me/view/auth/long_onboarding/cubit/long_onboarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:count_me/core/constants/app/index.dart';
import 'package:count_me/view/auth/long_onboarding/widget/custom_picker.dart';
import 'package:count_me/view/auth/long_onboarding/widget/onboarding_page_template.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IdealWeightSelect extends StatefulWidget {
  const IdealWeightSelect({super.key});

  @override
  State<IdealWeightSelect> createState() => _IdealWeightSelectState();
}

class _IdealWeightSelectState extends State<IdealWeightSelect> {
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
          // UserModel'e erişim
          final userModel = state.data;
          double? selectedWeight = userModel?.idealWeight;

          return OnboardingPageTemplate(
            heightSizedBox: true,
            question: AppStrings.question6,
            body: CustomPicker(
              title: AppStrings.kg,
              valueRange: List.generate(201, (index) => 30 + index),
              initialValue: 60,
              onValueChanged: (selectedWeight) {
                context.read<LongOnboardingCubit>().setupInitialUserProfile(
                    {'idealWeight': selectedWeight.toDouble()});
                print("Seçilen İdeal Kilo: $selectedWeight");
              },
            ),
          );
        } else {
          return const Center(child: Text("Selected weight is not available"));
        }
      },
    );
  }
}
