import 'package:count_me/view/auth/long_onboarding/model/user_onboarding_model.dart';

abstract class LongOnboardingState {}

class LongOnboardingInitial extends LongOnboardingState {}

class LongOnboardingInProgress extends LongOnboardingState {
  final UserOnboardingModel userOnboardingModel; // Mevcut kullanıcı bilgileri
  final int currentGroupIndex; // Hangi grup üzerinde çalışıldığını tutar
  final int currentPageIndex; // Hangi sayfada olduğunu tutar

  LongOnboardingInProgress({
    required this.userOnboardingModel,
    required this.currentGroupIndex,
    required this.currentPageIndex,
  });

  LongOnboardingInProgress copyWith({
    UserOnboardingModel? userOnboardingModel,
    int? currentGroupIndex,
    int? currentPageIndex,
  }) {
    return LongOnboardingInProgress(
      userOnboardingModel: userOnboardingModel ?? this.userOnboardingModel,
      currentGroupIndex: currentGroupIndex ?? this.currentGroupIndex,
      currentPageIndex: currentPageIndex ?? this.currentPageIndex,
    );
  }
}

class LongOnboardingComplete extends LongOnboardingState {
  final UserOnboardingModel userOnboardingModel;

  LongOnboardingComplete(this.userOnboardingModel);
}
