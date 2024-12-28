import 'package:count_me/core/constants/enums/index.dart';
import 'package:count_me/view/auth_cubit/login/widget/login_form_widget.dart';
import 'package:count_me/view/auth_cubit/login/widget/login_header_widget.dart';
import 'package:flutter/material.dart';

class LoginBodyWidget extends StatelessWidget {
  const LoginBodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingHelper.fixed.getPadding(left: true, right: true),
      child: Column(
        children: [
          SizedBox(height: SizedBoxHeight.xLarge.value),
          // Logo + Text
          LoginHeaderWidget(),
          SizedBox(height: SizedBoxHeight.xLarge.value),
          // Login TForm
          LoginFormWidget(),
        ],
      ),
    );
  }
}
