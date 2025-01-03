// ignore_for_file: avoid_print

import 'package:count_me/core/base/cubit/generic_cubit.dart';
import 'package:count_me/core/base/cubit/generic_cubit_state.dart';

class OnboardingCubit extends GenericCubit {
  OnboardingCubit() : super(GenericCubitState.initial());

  Future<void> getOnboarding() async {
    try {
      emit(GenericCubitState.loading());
      await Future.delayed(const Duration(seconds: 2));
      print("Onboarding is loading");
      emit(GenericCubitState.success("Onboarding completed successfully"));
    } catch (e) {
      emit(GenericCubitState.failure("An error occurred: ${e.toString()}"));
      print(e);
    }
  }
}
