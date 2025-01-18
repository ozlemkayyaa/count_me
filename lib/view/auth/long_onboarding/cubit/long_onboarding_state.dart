// LongOnboardingState, GenericCubitState'den türetiliyor.
import 'package:count_me/core/base/cubit/generic_cubit_state.dart';

class LongOnboardingState<T> extends GenericCubitState<T> {
  final int currentStep; // Mevcut grup indeksi
  final int currentQuestion; // Mevcut soru numarası
  final List<int> questionCounts; // Grupların toplam soru sayıları

  const LongOnboardingState({
    required this.currentStep,
    required this.currentQuestion,
    required this.questionCounts,
    super.data,
    super.error,
    required super.status,
  });

  // State'i kopyalamak için bir yardımcı metod
  LongOnboardingState<T> copyWith({
    int? currentStep,
    int? currentQuestion,
    List<int>? questionCounts,
    T? data,
    String? error,
    Status? status,
  }) {
    return LongOnboardingState<T>(
      currentStep: currentStep ?? this.currentStep,
      currentQuestion: currentQuestion ?? this.currentQuestion,
      questionCounts: questionCounts ?? this.questionCounts,
      data: data ?? this.data,
      error: error ?? this.error,
      status: status ?? this.status,
    );
  }
}
