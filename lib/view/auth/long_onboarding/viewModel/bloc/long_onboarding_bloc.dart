// ignore_for_file: avoid_print

import 'package:count_me/view/auth/long_onboarding/data/onboarding_data.dart';
import 'package:count_me/view/auth/long_onboarding/viewModel/bloc/long_onboarding_event.dart';
import 'package:count_me/view/auth/long_onboarding/viewModel/bloc/long_onboarding_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LongOnboardingBloc
    extends Bloc<LongOnboardingEvent, LongOnboardingState> {
  LongOnboardingBloc()
      : super(LongOnboardingState(
            currentStep: 0,
            totalSteps: onboardingData.length,
            selectedOptions: List.filled(onboardingData.length, -1))) {
    on<LongOnboardingStarted>(_onStarted);
    on<OptionSelected>(_onOptionSelected);
    on<NextStepRequested>(_onNextStepRequested);
  }

  void _onStarted(
      LongOnboardingStarted event, Emitter<LongOnboardingState> emit) {
    emit(state.copyWith(currentStep: 0));
  }

  void _onOptionSelected(
      OptionSelected event, Emitter<LongOnboardingState> emit) {
    // Listeyi güncellerken listeyi kontrol edin
    if (event.selectedOptionIndex >= 0 &&
        event.selectedOptionIndex <
            onboardingData[state.currentStep]["options"].length) {
      final updatedOptions = List<int>.from(state.selectedOptions);
      updatedOptions[state.currentStep] = event.selectedOptionIndex;

      emit(state.copyWith(selectedOptions: updatedOptions));
    } else {
      print("Option index out of range");
    }
  }

  void _onNextStepRequested(
      NextStepRequested event, Emitter<LongOnboardingState> emit) {
    if (state.currentStep < state.totalSteps - 1) {
      emit(state.copyWith(currentStep: state.currentStep + 1));
    } else {
      emit(state.copyWith(isCompleted: true));
    }
  }
}
