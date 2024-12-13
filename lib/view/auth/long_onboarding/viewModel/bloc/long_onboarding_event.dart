abstract class LongOnboardingEvent {}

// kullanıcının profil bilgilerini güncellemesine olanak sağlıyor
class UpdateProfileEvent extends LongOnboardingEvent {
  final Map<String, dynamic> profileData;
  UpdateProfileEvent(this.profileData);
}

// kullanıcının onboarding sürecini tamamlamasını tetikliyor
class CompleteOnboardingEvent extends LongOnboardingEvent {}

class NextPageEvent extends LongOnboardingEvent {}

class PreviousPageEvent extends LongOnboardingEvent {}
