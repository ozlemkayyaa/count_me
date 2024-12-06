abstract class SplashState {}

// Splash ekranı başlatıldı
class SplashInitial extends SplashState {}

class SplashError extends SplashState {
  final String message; // Hata mesajı
  SplashError(this.message);
}

// Logic tamamlandı ve onboarding'e geçilecek
class SplashCompleted extends SplashState {}
