abstract class SplashState {}

class SplashInitial extends SplashState {} // Splash ekranı başlatıldı

class SplashError extends SplashState {
  final String message; // Hata mesajı
  SplashError(this.message);
}

// Logic tamamlandı ve onboarding'e geçilecek
class SplashCompleted extends SplashState {}
