abstract class LongOnboardingEvent {}

class UpdateProfileEvent extends LongOnboardingEvent {
  final Map<String, dynamic> profileData;
  UpdateProfileEvent(this.profileData);
}

class CompleteOnboardingEvent extends LongOnboardingEvent {}
