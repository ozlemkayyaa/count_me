abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginError extends LoginState {
  final String message;
  LoginError(this.message);
}

// Logic tamamlandı ve onboarding'e geçilecek
class LoginCompleted extends LoginState {}
