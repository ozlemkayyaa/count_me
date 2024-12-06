// ignore_for_file: avoid_print

import 'package:count_me/view/auth/login/viewModel/bloc/login_event.dart';
import 'package:count_me/view/auth/login/viewModel/bloc/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginStarted>(
      (event, emit) async {
        try {
          emit(LoginCompleted());
          print("Login Started");
        } catch (e) {
          emit(LoginError("An error occurred: ${e.toString()}"));
          print(e);
        }
      },
    );
  }
}
