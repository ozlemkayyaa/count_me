abstract class OnboardingState {}

// Başlangıç durumu
class OnboardingInitial extends OnboardingState {}

// Veri yükleniyor
class OnboardingLoading extends OnboardingState {}

// Veri başarıyla yüklendi
class OnboardingCompleted extends OnboardingState {}

// Bir hata oluştu
class OnboardingError extends OnboardingState {
  final String message; // Hata mesajı
  OnboardingError(this.message);
}
