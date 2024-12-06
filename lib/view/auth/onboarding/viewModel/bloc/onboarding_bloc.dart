import 'package:count_me/view/auth/onboarding/viewModel/bloc/onboarding_event.dart';
import 'package:count_me/view/auth/onboarding/viewModel/bloc/onboarding_state.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc() : super(OnboardingInitial()) {
    on<OnboardingStarted>((event, emit) async {
      try {
        emit(OnboardingCompleted());
        print("OnboardingView Started");
      } catch (e) {
        emit(OnboardingError("Error during onboarding process."));
      }
    });
  }
}
