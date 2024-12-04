import 'package:count_me/core/base/state/base_state.dart';
import 'package:count_me/core/base/view/base_view.dart';
import 'package:count_me/view/auth/register/viewModel/register_view_model.dart';
import 'package:flutter/material.dart';

import '../../../../core/components/scaffold/custom_scaffold.dart';
import '../../../../core/constants/app/index.dart';
import '../widget/register_body_widget.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends BaseState<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<RegisterViewModel>(
      viewModel: RegisterViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (BuildContext context, RegisterViewModel viewModel) =>
          CustomScaffold(
        appBar: AppBar(backgroundColor: AppColors.whiteBackground),
        body: SingleChildScrollView(
          child: RegisterBodyWidget(),
        ),
      ),
    );
  }
}
