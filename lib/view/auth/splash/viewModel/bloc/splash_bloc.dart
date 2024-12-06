// ignore_for_file: avoid_print

import 'package:flutter_bloc/flutter_bloc.dart';
import 'splash_event.dart';
import 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashInitial()) {
    on<SplashStarted>((event, emit) async {
      try {
        emit(SplashCompleted());
        print("SplashView Started");
      } catch (e) {
        emit(SplashError("An error occurred: ${e.toString()}"));
      }
    });
  }
}
