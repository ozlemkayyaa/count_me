abstract class OnboardingState {}

// Başlangıç durumu
class OnboardingInitial extends OnboardingState {}

// Veri yükleniyor
class OnboardingLoading extends OnboardingState {}

// Veri başarıyla yüklendi
class OnboardingLoaded extends OnboardingState {
  final String data; // Örneğin, bir veri varsa bu state ile paylaşılır
  OnboardingLoaded(this.data);
}

// Bir hata oluştu
class OnboardingError extends OnboardingState {
  final String message; // Hata mesajı
  OnboardingError(this.message);
}
