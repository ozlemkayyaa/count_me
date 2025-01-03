// ignore_for_file: avoid_print

import 'package:count_me/core/base/state/base_state.dart';
import 'package:count_me/core/base/view/base_view_bloc.dart';
import 'package:count_me/core/components/index.dart';
import 'package:count_me/core/components/loading_indicator/loading_indicator.dart';
import 'package:count_me/core/components/snackbar/snackbar_manager.dart';
import 'package:count_me/core/constants/app/index.dart';
import 'package:count_me/view/auth/login/cubit/login_cubit.dart';
import 'package:count_me/view/auth/login/widget/login_body_widget.dart';
import 'package:flutter/material.dart';
import '../../../../core/base/cubit/generic_cubit_state.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends BaseState<LoginView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<LoginCubit, GenericCubitState>(
      cubit: LoginCubit(),
      onPageBuilder: (context, cubit, state) {
        _handleSnackBar(state);

        // State'e göre uygun widget'ı döndür
        return Stack(
          children: [
            // Normal durumdaki ekran
            CustomScaffold(
              appBar: AppBar(backgroundColor: AppColors.whiteBackground),
              body: SingleChildScrollView(
                child: LoginBodyWidget(),
              ),
            ),

            // Loading durumunda loading indicator'ı ekleyelim
            if (state.status == Status.loading) const LoadingIndicator(),
          ],
        );
      },
    );
  }
}

// State'e göre Snackbar gösterimi
void _handleSnackBar(GenericCubitState state) {
  if (state.status == Status.failure) {
    SnackbarManager.showSnackBar(
      message: state.error ?? "An unknown error occurred",
      backgroundColor: AppColors.reddishOrange,
    );
  } else if (state.status == Status.success) {
    SnackbarManager.showSnackBar(
      message: "Login successful",
      backgroundColor: AppColors.mainGreen,
    );
  }
}
