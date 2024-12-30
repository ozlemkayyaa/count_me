import 'package:count_me/core/base/cubit/generic_cubit_state.dart';
import 'package:count_me/core/base/state/base_state.dart';
import 'package:count_me/core/base/view/base_view_bloc.dart';
import 'package:count_me/core/components/loading_indicator/loading_indicator.dart';
import 'package:count_me/core/components/scaffold/custom_scaffold.dart';
import 'package:count_me/core/components/snackbar/snackbar_manager.dart';
import 'package:count_me/core/constants/app/index.dart';
import 'package:count_me/view/auth_cubit/register/cubit/register_cubit.dart';
import 'package:count_me/view/auth_cubit/register/widget/register_body_widget.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends BaseState<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<RegisterCubit, GenericCubitState>(
      cubit: RegisterCubit(),
      onPageBuilder: (context, cubit, state) {
        _handleSnackBar(state);

        // State'e göre uygun widget'ı döndür
        return Stack(
          children: [
            // Normal durumdaki ekran
            CustomScaffold(
              appBar: AppBar(backgroundColor: AppColors.whiteBackground),
              body: SingleChildScrollView(
                child: RegisterBodyWidget(),
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
      message: "Register successful",
      backgroundColor: AppColors.mainGreen,
    );
  }
}
