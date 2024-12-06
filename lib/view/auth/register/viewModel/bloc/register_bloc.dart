// ignore_for_file: avoid_print

import 'package:count_me/view/auth/register/viewModel/bloc/register_event.dart';
import 'package:count_me/view/auth/register/viewModel/bloc/register_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterInitial()) {
    on<RegisterStarted>(
      (event, emit) async {
        try {
          emit(RegisterCompleted());
          print("Register Started");
        } catch (e) {
          emit(RegisterError("An error occurred: ${e.toString()}"));
          print(e);
        }
      },
    );
  }
}
