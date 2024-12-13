// ignore_for_file: avoid_print

import 'package:count_me/view/auth/long_onboarding/model/user_onboarding_model.dart';
import 'package:equatable/equatable.dart';

abstract class LongOnboardingState {}

class LongOnboardingInitial extends LongOnboardingState {}

/*
Kullanıcının profil bilgileri daha ayrıntılı olarak tutulur. 
Kullanıcının hangi grup ve sayfada olduğu da takip edilebilir.
 */

class LongOnboardingInProgress extends LongOnboardingState with EquatableMixin {
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
    print('copyWith çağrıldı: currentGroupIndex: $currentGroupIndex, '
        'currentPageIndex: $currentPageIndex');
    return LongOnboardingInProgress(
      userOnboardingModel: userOnboardingModel ?? this.userOnboardingModel,
      currentGroupIndex: currentGroupIndex ?? this.currentGroupIndex,
      currentPageIndex: currentPageIndex ?? this.currentPageIndex,
    );
  }

  @override
  List<Object?> get props =>
      [userOnboardingModel, currentGroupIndex, currentPageIndex];
}

// Kullanıcının onboarding sürecini tamamladığını ve nihai kullanıcı profil bilgilerinin saklandığını gösterir.

class LongOnboardingComplete extends LongOnboardingState {
  final UserOnboardingModel userOnboardingModel;

  LongOnboardingComplete(this.userOnboardingModel);
}
