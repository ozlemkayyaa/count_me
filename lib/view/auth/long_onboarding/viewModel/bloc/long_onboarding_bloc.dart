// ignore_for_file: avoid_print

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
    on<NextPageEvent>(_onNextPage);
    on<PreviousPageEvent>(_onPreviousPage);
    on<CompleteOnboardingEvent>(_onCompleteOnboarding);
  }

  // UpdateProfileEvent tetiklendiğinde kullanıcının profil bilgilerini güncelliyor ve currentPageIndex'i arttırıyor.
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

  // CompleteOnboardingEvent tetiklendiğinde LongOnboardingComplete durumuna geçiş yapıyor.
  void _onCompleteOnboarding(
    CompleteOnboardingEvent event,
    Emitter<LongOnboardingState> emit,
  ) {
    if (state is LongOnboardingInProgress) {
      final currentState = state as LongOnboardingInProgress;
      emit(LongOnboardingComplete(currentState.userOnboardingModel));
    }
  }

  void _onNextPage(NextPageEvent event, Emitter<LongOnboardingState> emit) {
    if (state is LongOnboardingInProgress) {
      final currentState = state as LongOnboardingInProgress;
      final isLastGroup = currentState.currentGroupIndex == 2;

      if (!isLastGroup) {
        final updatedIndex = currentState.currentGroupIndex + 1;
        print('currentGroupIndex güncellendi: $updatedIndex');

        final newState = currentState.copyWith(
          currentGroupIndex: updatedIndex,
        );

        if (updatedIndex < 3) {
          emit(newState);
        }

        print(
            'Emit edilen state: currentGroupIndex = ${newState.currentGroupIndex}');
      } else {
        print('Son grup, index güncellenmedi.');
      }
    }
  }

  void _onPreviousPage(
      PreviousPageEvent event, Emitter<LongOnboardingState> emit) {
    if (state is LongOnboardingInProgress) {
      final currentState = state as LongOnboardingInProgress;
      final isFirstGroup = currentState.currentGroupIndex == 0;

      if (!isFirstGroup) {
        emit(currentState.copyWith(
          currentGroupIndex: currentState.currentGroupIndex - 1,
        ));
      }
    }
  }
}
