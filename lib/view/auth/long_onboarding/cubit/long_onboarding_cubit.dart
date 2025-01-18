import 'package:count_me/core/model/user/user_model.dart';
import 'package:count_me/core/base/cubit/generic_cubit_state.dart';
import 'package:count_me/view/auth/long_onboarding/cubit/long_onboarding_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LongOnboardingCubit extends Cubit<LongOnboardingState<UserModel>> {
  LongOnboardingCubit()
      : super(
          LongOnboardingState<UserModel>(
            currentStep: 0,
            currentQuestion: 1,
            questionCounts: [7, 2, 1, 0], // Grupların toplam soru sayıları
            status: Status.initial,
          ),
        );

  // Kullanıcının başlangıç profilini oluşturur.
  void setupInitialUserProfile(Map<String, dynamic> userData) {
    if (state.data != null) {
      final updatedUserProfile = state.data?.copyWith(
        name: userData['name'],
        gender: userData['gender'],
        birthday: userData['birthday'],
        height: userData['height'],
        currentWeight: userData['currentWeight'],
        idealWeight: userData['idealWeight'],
        goal: userData['goal'],
        activityLevel: userData['activityLevel'],
        weightLoss: userData['weightLoss'],
        healthConditions: userData['healthConditions'],
      );

      if (updatedUserProfile != null) {
        emit(state.copyWith(data: updatedUserProfile, status: Status.success));
        goToNextQuestion();
      }
    }
  }

  void changeQuestion({required bool isNext}) {
    final currentStep = state.currentStep;
    final currentQuestion = state.currentQuestion;
    final totalQuestions = state.questionCounts[currentStep];

    if (isNext) {
      if (currentQuestion < totalQuestions) {
        // Aynı grup içinde bir sonraki soruya geç
        emit(state.copyWith(
            currentQuestion: currentQuestion + 1, status: Status.success));
      } else if (currentStep < state.questionCounts.length - 1) {
        // Sonraki gruba geç
        emit(state.copyWith(
            currentStep: currentStep + 1,
            currentQuestion: 1,
            status: Status.success));
      }
    } else {
      if (currentQuestion > 1) {
        // Aynı grup içinde bir önceki soruya geç
        emit(state.copyWith(
            currentQuestion: currentQuestion - 1, status: Status.success));
      } else if (currentStep > 0) {
        // Bir önceki gruba geç
        final previousStep = currentStep - 1;
        final totalQuestions = state.questionCounts[previousStep];
        emit(state.copyWith(
            currentStep: previousStep,
            currentQuestion: totalQuestions,
            status: Status.success));
      }
    }
  }

  void updateQuestion(int newQuestion) {
    emit(state.copyWith(currentQuestion: newQuestion));
  }

  void goToNextGroup() {
    if (state.currentStep < state.questionCounts.length - 1) {
      emit(state.copyWith(
        currentStep: state.currentStep + 1,
        currentQuestion: 1, // Yeni gruba geçince soru 1'den başlar
      ));
    }
  }

  void goToNextQuestion() => changeQuestion(isNext: true);

  void goToPreviousQuestion() => changeQuestion(isNext: false);
}
