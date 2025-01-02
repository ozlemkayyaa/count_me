// ignore_for_file: avoid_print, unused_field, unused_local_variable
import 'package:count_me/core/base/cubit/generic_cubit_state.dart';
import 'package:count_me/core/constants/app/index.dart';
import 'package:count_me/core/model/user/user_model.dart';
import 'package:count_me/view/auth/long_onboarding/widget/custom_picker.dart';
import 'package:count_me/view/auth/long_onboarding/widget/onboarding_page_template.dart';
import 'package:count_me/view/auth_cubit/long_onboarding/cubit/long_onboarding_cubit.dart';
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
    return BlocBuilder<LongOnboardingCubit, GenericCubitState<UserModel>>(
      builder: (context, state) {
        //* SUCCESS
        if (state.status == Status.initial || state.status == Status.success) {
          final userModel = state.data;
          double? selectedHeight = userModel?.currentWeight;

          return OnboardingPageTemplate(
            heightSizedBox: true,
            question: AppStrings.question4,
            body: CustomPicker(
              title: AppStrings.cm,
              valueRange: List.generate(121, (index) => 100 + index),
              initialValue: 160,
              onValueChanged: (selectedHeight) {
                context.read<LongOnboardingCubit>().setupInitialUserProfile(
                    {'height': selectedHeight.toDouble()});
                print("Seçilen Boy: $selectedHeight");
              },
            ),
          );
          //* LOADING
        } else if (state.status == Status.loading) {
          return const Center(child: CircularProgressIndicator());
          //* FAILURE
        } else if (state.status == Status.failure) {
          return Center(
            child: Text(
              "Bir hata oluştu: ${state.error ?? "Bilinmeyen hata"}",
              style: const TextStyle(color: Colors.red),
            ),
          );
        } else {
          return const Center(child: Text("Height is not available."));
        }
      },
    );
  }
}
