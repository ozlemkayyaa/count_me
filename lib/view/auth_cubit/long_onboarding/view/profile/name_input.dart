import 'package:count_me/core/base/cubit/generic_cubit_state.dart';
import 'package:count_me/core/constants/app/index.dart';
import 'package:count_me/core/model/user/user_model.dart';
import 'package:count_me/view/auth/long_onboarding/widget/onboarding_page_template.dart';
import 'package:count_me/view/auth_cubit/long_onboarding/cubit/long_onboarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NameInput extends StatelessWidget {
  final PageController pageController;
  final VoidCallback goToNextPage;
  const NameInput(
      {super.key, required this.pageController, required this.goToNextPage});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();

    return BlocBuilder<LongOnboardingCubit, GenericCubitState<UserModel>>(
      builder: (context, state) {
        if (state.status == Status.loading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state.status == Status.failure) {
          return Center(
            child: Text(
              "Bir hata oluştu: ${state.error ?? "Bilinmeyen hata"}",
              style: const TextStyle(color: Colors.red),
            ),
          );
        } else if (state.status == Status.initial ||
            state.status == Status.success) {
          return OnboardingPageTemplate(
            question: AppStrings.question7,
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36.0),
              child: TextFormField(
                controller: nameController,
                decoration: InputDecoration(labelText: AppStrings.name),
                onChanged: (value) {
                  context
                      .read<LongOnboardingCubit>()
                      .setupInitialUserProfile({'name': value});
                },
              ),
            ),
          );
        } else {
          return const Center(child: Text("Bir sorun oluştu."));
        }
      },
    );
  }
}
