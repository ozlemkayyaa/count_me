// ignore_for_file: avoid_print

import 'package:count_me/core/base/cubit/generic_cubit.dart';
import 'package:count_me/core/base/cubit/generic_cubit_state.dart';

class SplashCubit extends GenericCubit {
  SplashCubit() : super(GenericCubitState.initial());

  Future<void> logicStarted() async {
    try {
      emit(GenericCubitState.loading());
      await Future.delayed(const Duration(seconds: 2));
      print("Splash Cubit started");
      emit(GenericCubitState.success("Splash Completed"));
    } catch (e) {
      emit(GenericCubitState.failure("An error occurred: ${e.toString()}"));
      print(e);
    }
  }
}
