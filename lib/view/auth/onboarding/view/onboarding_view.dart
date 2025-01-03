import 'package:count_me/core/base/cubit/generic_cubit_state.dart';
import 'package:count_me/core/base/state/base_state.dart';
import 'package:count_me/core/base/view/base_view_bloc.dart';
import 'package:count_me/core/components/loading_indicator/loading_indicator.dart';
import 'package:count_me/core/components/scaffold/custom_scaffold.dart';
import 'package:count_me/view/auth/onboarding/cubit/onboarding_cubit.dart';
import 'package:count_me/view/auth/onboarding/widget/onboarding_body_widget.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends BaseState<OnboardingView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<OnboardingCubit, GenericCubitState>(
      cubit: OnboardingCubit(),
      onPageBuilder: (context, cubit, state) {
        if (state.status == Status.loading) const LoadingIndicator();

        return CustomScaffold(
          body: SingleChildScrollView(
            child: const OnboardingBodyWidget(),
          ),
        );
      },
    );
  }
}
