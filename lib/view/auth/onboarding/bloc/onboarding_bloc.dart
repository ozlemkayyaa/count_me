import 'package:count_me/view/auth/onboarding/bloc/onboarding_event.dart';
import 'package:count_me/view/auth/onboarding/bloc/onboarding_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc() : super(OnboardingLoaded("Welcome to Onboarding!")) {
    on<OnboardingStarted>((event, emit) async {
      try {
        final data = "Onboarding completed!";
        emit(OnboardingLoaded(data));
      } catch (e) {
        emit(OnboardingError("Error during onboarding process."));
      }
    });
  }
}
