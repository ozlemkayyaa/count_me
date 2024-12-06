// ignore_for_file: avoid_print

import 'package:count_me/core/base/state/base_state.dart';
import 'package:count_me/core/base/view/base_view_bloc.dart';
import 'package:count_me/core/components/index.dart';
import 'package:count_me/core/constants/app/index.dart';
import 'package:count_me/core/extension/index.dart';
import 'package:count_me/view/auth/login/viewModel/bloc/login_bloc.dart';
import 'package:count_me/view/auth/login/viewModel/bloc/login_event.dart';
import 'package:count_me/view/auth/login/viewModel/bloc/login_state.dart';
import 'package:count_me/view/auth/login/widget/login_body_widget.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends BaseState<LoginView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<LoginBloc, LoginState>(
      bloc: LoginBloc(),
      onPageBuilder: (context, bloc, state) {
        // INITIAL
        if (state is LoginInitial) {
          bloc.add(LoginStarted());
          return CustomScaffold(
            backgroundColor: AppColors.whiteBackground,
            body: const Center(
              child: CircularProgressIndicator(color: AppColors.mainGreen),
            ),
          );
        } else if (state is LoginCompleted) {
          return CustomScaffold(
            appBar: AppBar(
              backgroundColor: AppColors.whiteBackground,
              //automaticallyImplyLeading: false,
            ),
            body: SingleChildScrollView(
              child: LoginBodyWidget(),
            ),
          );
        } else if (state is LoginError) {
          return Center(
            child: Text(
              "Error: ${state.message}",
              style: context.textTheme.bodyLarge?.copyWith(
                color: Colors.red,
              ),
            ),
          );
        } else {
          return const Center(
            child: Text("Unexpected state"),
          );
        }
      },
      onDispose: () {
        print("LoginView disposed");
      },
    );
  }
}
