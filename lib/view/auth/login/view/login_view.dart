import 'package:count_me/core/base/state/base_state.dart';
import 'package:count_me/core/base/view/base_view.dart';
import 'package:count_me/view/auth/login/viewModel/login_view_model.dart';
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
          Scaffold(
        body: Column(
          children: [
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
          ],
        ),
      ),
    );
  }
}
