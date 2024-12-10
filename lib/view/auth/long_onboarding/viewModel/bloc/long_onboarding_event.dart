abstract class LongOnboardingEvent {}

class UpdateProfileEvent extends LongOnboardingEvent {
  final Map<String, dynamic> profileData; // Profil bilgilerini alır
  UpdateProfileEvent(this.profileData);
}

class UpdateActivityEvent extends LongOnboardingEvent {
  final Map<String, dynamic> activityData; // Aktivite bilgilerini alır
  UpdateActivityEvent(this.activityData);
}

class UpdateHealthEvent extends LongOnboardingEvent {
  final Map<String, dynamic> healthData; // Sağlık bilgilerini alır
  UpdateHealthEvent(this.healthData);
}

class CompleteOnboardingEvent extends LongOnboardingEvent {}
