import 'package:count_me/core/base/cubit/generic_cubit.dart';
import 'package:count_me/core/model/user/user_model.dart';
import 'package:count_me/core/base/cubit/generic_cubit_state.dart';
import 'package:flutter/material.dart';

class LongOnboardingCubit extends GenericCubit<UserModel> {
  int currentGroupIndex = 0;
  int currentPageIndex = 0;

  LongOnboardingCubit() : super(GenericCubitState<UserModel>.initial());

  // Kullanıcının başlangıç profilini oluşturur.
  void setupInitialUserProfile(Map<String, dynamic> userData) {
    if (state.data != null) {
      final updatedUserProfile = state.data!.copyWith(
        name: userData['name'],
        gender: userData['gender'],
        birthday: userData['birthDate'],
        height: userData['height'],
        currentWeight: userData['currentWeight'],
        idealWeight: userData['idealWeight'],
        goal: userData['goal'],
        activityLevel: userData['activityLevel'],
        weightLoss: userData['weightLoss'],
        healthConditions: userData['healthConditions'],
      );
      emit(GenericCubitState.success(updatedUserProfile));
      goToNextPage();
    }
  }

  // Sayfa geçişlerini yönetir.
  void goToNextPage() {
    debugPrint(
        'Current Page: $currentPageIndex, Current Group: $currentGroupIndex');
    emit(GenericCubitState.loading());
    if (isLastGroup) return;

    currentPageIndex++;
    if (currentPageIndex >= groupPageLimit(currentGroupIndex)) {
      currentPageIndex = 0;
      currentGroupIndex++;
    }
    debugPrint(
        'Current Page: $currentPageIndex, Current Group: $currentGroupIndex');
    emit(GenericCubitState.success(state.data));
  }

  void goToPreviousPage() {
    debugPrint(
        'Current Page: $currentPageIndex, Current Group: $currentGroupIndex');
    if (isFirstPage) return;

    currentPageIndex--;
    if (currentPageIndex < 0) {
      currentGroupIndex--;
      currentPageIndex = groupPageLimit(currentGroupIndex) - 1;
    }
    emit(GenericCubitState.success(state.data));
  }

  // Onboarding tamamlama işlemi.
  void finishOnboarding() {
    emit(GenericCubitState.success(state.data));
  }

  // Grup bazlı sayfa limiti.
  int groupPageLimit(int groupIndex) {
    const groupLimits = [7, 2, 1, 1]; // Gruplara göre sayfa sayıları
    return groupLimits[groupIndex];
  }

  // Yardımcı özellikler.
  bool get isLastGroup =>
      currentGroupIndex >= 3 &&
      currentPageIndex >= groupPageLimit(currentGroupIndex) - 1;

  bool get isFirstPage => currentGroupIndex == 0 && currentPageIndex == 0;
}
