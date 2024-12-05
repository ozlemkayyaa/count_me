abstract class OnboardingEvent {}

// Onboarding başlatılıyor
class OnboardingStarted extends OnboardingEvent {}

// Onboarding tamamlandı
class OnboardingCompleted extends OnboardingEvent {}

// Bir hata tetikleniyor
class OnboardingFailed extends OnboardingEvent {
  final String message; // Örneğin, hata mesajı
  OnboardingFailed(this.message);
}
