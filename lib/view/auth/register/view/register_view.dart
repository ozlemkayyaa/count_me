// ignore_for_file: avoid_print

import 'package:count_me/core/base/state/base_state.dart';
import 'package:count_me/core/base/view/base_view_bloc.dart';
import 'package:count_me/core/components/index.dart';
import 'package:count_me/core/constants/app/index.dart';
import 'package:count_me/core/extension/index.dart';
import 'package:count_me/view/auth/register/viewModel/bloc/register_bloc.dart';
import 'package:count_me/view/auth/register/viewModel/bloc/register_event.dart';
import 'package:count_me/view/auth/register/viewModel/bloc/register_state.dart';
import 'package:count_me/view/auth/register/widget/register_body_widget.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends BaseState<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<RegisterBloc, RegisterState>(
      bloc: RegisterBloc(),
      onPageBuilder: (context, bloc, state) {
        // INITIAL
        if (state is RegisterInitial) {
          bloc.add(RegisterStarted());
          return CustomScaffold(
            backgroundColor: AppColors.whiteBackground,
            body: const Center(
              child: CircularProgressIndicator(color: AppColors.mainGreen),
            ),
          );
        } else if (state is RegisterCompleted) {
          return CustomScaffold(
            appBar: AppBar(
              backgroundColor: AppColors.whiteBackground,
              //automaticallyImplyLeading: false,
            ),
            body: SingleChildScrollView(
              child: RegisterBodyWidget(),
            ),
          );
        } else if (state is RegisterError) {
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
        print("RegisterView disposed");
      },
    );
  }
}
