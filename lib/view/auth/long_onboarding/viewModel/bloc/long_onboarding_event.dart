abstract class LongOnboardingEvent {}

class UpdateProfileEvent extends LongOnboardingEvent {
  final Map<String, dynamic> profileData;
  UpdateProfileEvent(this.profileData);
}

class UpdateActivityEvent extends LongOnboardingEvent {
  final Map<String, dynamic> activityData;
  UpdateActivityEvent(this.activityData);
}

class UpdateHealthEvent extends LongOnboardingEvent {
  final Map<String, dynamic> healthData;
  UpdateHealthEvent(this.healthData);
}

class CompleteOnboardingEvent extends LongOnboardingEvent {}
