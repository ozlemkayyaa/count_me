class LongOnboardingState {
  final int currentStep;
  final int totalSteps;
  final List<int> selectedOptions; // Yeni eklendi
  final bool isCompleted;
  final String? errorMessage;

  LongOnboardingState({
    required this.currentStep,
    required this.totalSteps,
    required this.selectedOptions, // Yeni eklendi
    this.isCompleted = false,
    this.errorMessage,
  });

  LongOnboardingState copyWith({
    int? currentStep,
    List<int>? selectedOptions, // Yeni eklendi
    bool? isCompleted,
    String? errorMessage,
  }) {
    return LongOnboardingState(
      currentStep: currentStep ?? this.currentStep,
      totalSteps: totalSteps,
      selectedOptions: selectedOptions ?? this.selectedOptions, // Yeni eklendi
      isCompleted: isCompleted ?? this.isCompleted,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}

class LongOnboardingInitial extends LongOnboardingState {
  LongOnboardingInitial(
      {required super.currentStep,
      required super.totalSteps,
      required super.selectedOptions});
}

class LongOnboardingError extends LongOnboardingState {
  final String message;

  LongOnboardingError(this.message,
      {required super.currentStep,
      required super.totalSteps,
      required super.selectedOptions});
}

class LongOnboardingCompleted extends LongOnboardingState {
  LongOnboardingCompleted(
      {required super.currentStep,
      required super.totalSteps,
      required super.selectedOptions});
}
