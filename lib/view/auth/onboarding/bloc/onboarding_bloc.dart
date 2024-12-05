import 'package:count_me/view/auth/onboarding/bloc/onboarding_event.dart';
import 'package:count_me/view/auth/onboarding/bloc/onboarding_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc() : super(OnboardingInitial()) {
    // Olayları dinlemek için on<Event>() metodu kullanılır
    on<OnboardingStarted>((event, emit) async {
      // İlk olarak yükleme durumuna geçiyoruz
      emit(OnboardingLoading());
      try {
        // Örneğin bir veri yükleme işlemi
        await Future.delayed(
            const Duration(seconds: 2)); // Simüle edilmiş bekleme
        final data = "Onboarding completed!"; // Örnek veri
        emit(OnboardingLoaded(data));
      } catch (e) {
        // Hata durumuna geçiyoruz
        emit(OnboardingError("An error occurred while loading onboarding."));
      }
    });

    on<OnboardingCompleted>((event, emit) {
      emit(OnboardingLoaded("Onboarding successfully completed!"));
    });

    on<OnboardingFailed>((event, emit) {
      emit(OnboardingError(event.message));
    });
  }
}
