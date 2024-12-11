import 'package:count_me/view/auth/long_onboarding/model/user_onboarding_model.dart';
import 'package:count_me/view/auth/long_onboarding/viewModel/bloc/long_onboarding_event.dart';
import 'package:count_me/view/auth/long_onboarding/viewModel/bloc/long_onboarding_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LongOnboardingBloc
    extends Bloc<LongOnboardingEvent, LongOnboardingState> {
  LongOnboardingBloc()
      : super(LongOnboardingInProgress(
          userOnboardingModel: UserOnboardingModel(),
          currentGroupIndex: 0,
          currentPageIndex: 0,
        )) {
    on<UpdateProfileEvent>(_onUpdateProfile);
    on<UpdateActivityEvent>(_onUpdateActivity);
    on<UpdateHealthEvent>(_onUpdateHealth);
    on<CompleteOnboardingEvent>(_onCompleteOnboarding);
  }

  void _onUpdateProfile(
    UpdateProfileEvent event,
    Emitter<LongOnboardingState> emit,
  ) {
    if (state is LongOnboardingInProgress) {
      final currentState = state as LongOnboardingInProgress;
      emit(currentState.copyWith(
        userOnboardingModel: currentState.userOnboardingModel.copyWith(
          name: event.profileData['name'],
          gender: event.profileData['gender'],
          birthDate: event.profileData['birthDate'],
          height: event.profileData['height'],
          currentWeight: event.profileData['currentWeight'],
          targetWeight: event.profileData['targetWeight'],
          activityLevel: event.profileData['activityLevel'],
          goals: event.profileData['goals'],
          healthConcerns: event.profileData['healthConcerns'],
          weightLossExperience: event.profileData['weightLossExperience'],
        ),
        currentPageIndex: currentState.currentPageIndex + 1,
      ));
    }
  }

  void _onUpdateActivity(
    UpdateActivityEvent event,
    Emitter<LongOnboardingState> emit,
  ) {
    if (state is LongOnboardingInProgress) {
      final currentState = state as LongOnboardingInProgress;
      emit(currentState.copyWith(
        userOnboardingModel: currentState.userOnboardingModel.copyWith(
          activityLevel: event.activityData['activityLevel'],
        ),
        currentGroupIndex: currentState.currentGroupIndex + 1,
      ));
    }
  }

  void _onUpdateHealth(
    UpdateHealthEvent event,
    Emitter<LongOnboardingState> emit,
  ) {
    if (state is LongOnboardingInProgress) {
      final currentState = state as LongOnboardingInProgress;
      emit(currentState.copyWith(
        userOnboardingModel: currentState.userOnboardingModel.copyWith(
          healthConcerns: event.healthData['healthConcerns'],
        ),
      ));
    }
  }

  void _onCompleteOnboarding(
    CompleteOnboardingEvent event,
    Emitter<LongOnboardingState> emit,
  ) {
    if (state is LongOnboardingInProgress) {
      final currentState = state as LongOnboardingInProgress;
      emit(LongOnboardingComplete(currentState.userOnboardingModel));
    }
  }
}
