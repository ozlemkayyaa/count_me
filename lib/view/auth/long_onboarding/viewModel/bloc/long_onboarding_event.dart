abstract class LongOnboardingEvent {}

class LongOnboardingStarted extends LongOnboardingEvent {}

class OptionSelected extends LongOnboardingEvent {
  final int selectedOptionIndex;

  OptionSelected(this.selectedOptionIndex);
}

class NextStepRequested extends LongOnboardingEvent {}
