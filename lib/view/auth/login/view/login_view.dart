import 'package:count_me/core/base/state/base_state.dart';
import 'package:count_me/core/base/view/base_view.dart';
import 'package:count_me/core/components/index.dart';
import 'package:count_me/core/constants/app/app_colors.dart';
import 'package:count_me/view/auth/login/viewModel/login_view_model.dart';
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
    return BaseView<LoginViewModel>(
      viewModel: LoginViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (BuildContext context, LoginViewModel viewModel) =>
          CustomScaffold(
        appBar: AppBar(
          backgroundColor: AppColors.whiteBackground,
          //automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          child: LoginBodyWidget(),
        ),
      ),
    );
  }
}
