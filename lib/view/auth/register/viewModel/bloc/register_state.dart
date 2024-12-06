abstract class RegisterState {}

class RegisterInitial extends RegisterState {}

class RegisterError extends RegisterState {
  final String message;
  RegisterError(this.message);
}

// Logic tamamlandı ve onboarding'e geçilecek
class RegisterCompleted extends RegisterState {}
