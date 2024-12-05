// ignore_for_file: avoid_print
import 'package:count_me/core/base/state/base_state.dart';
import 'package:count_me/core/constants/app/index.dart';
import 'package:flutter/material.dart';
import '../../../../core/base/view/base_view_bloc.dart';
import '../../../../core/components/index.dart';
import '../../../../core/extension/context_extension.dart';
import '../bloc/onboarding_bloc.dart';
import '../bloc/onboarding_event.dart';
import '../bloc/onboarding_state.dart';
import '../widget/onboarding_body_widget.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends BaseState<OnboardingView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<OnboardingBloc, OnboardingState>(
      bloc: OnboardingBloc(), // Bloc oluşturuluyor
      onPageBuilder: (context, bloc, state) {
        if (state is OnboardingInitial) {
          bloc.add(OnboardingStarted());
          return CustomScaffold(
            backgroundColor: AppColors.whiteBackground,
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (state is OnboardingLoading) {
          return CustomScaffold(
            backgroundColor: AppColors.whiteBackground,
            body: const Center(
              child: CircularProgressIndicator(color: AppColors.mainGreen),
            ),
          );
        } else if (state is OnboardingLoaded) {
          return CustomScaffold(
            body: SingleChildScrollView(
              child: const OnboardingBodyWidget(),
            ),
          );
        } else if (state is OnboardingError) {
          return Center(
            child: Text(
              "Error: ${state.message}",
              style: context.textTheme.bodyLarge?.copyWith(
                color: Colors.red,
              ),
            ),
          );
        } else {
          return const Center(
            child: Text("Unknown state"),
          );
        }
      },
      onDispose: () {
        print("OnboardingView disposed");
      },
    );
  }
}
