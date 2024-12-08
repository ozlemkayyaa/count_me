import 'package:count_me/core/constants/enums/index.dart';
import 'package:count_me/core/constants/navigation/navigation_constants.dart';
import 'package:count_me/core/extension/index.dart';
import 'package:count_me/core/init/navigation/navigation_service.dart';
import 'package:count_me/view/auth/login/view/login_view_mixin.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/app/index.dart';

class LoginFormWidget extends StatelessWidget with LoginViewMixin {
  LoginFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          // Email Field
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            controller: emailController,
            decoration: InputDecoration(
              labelText: AppStrings.email,
              prefixIcon: Padding(
                padding: EdgeInsets.only(
                  left: context.paddingNormal.left,
                  right: context.paddingExtraLow.left,
                ),
                child: Icon(Icons.email_outlined),
              ),
            ),
          ),
          SizedBox(height: SizedBoxHeight.mediumSmall.value),

          // Password Field
          TextFormField(
            keyboardType: TextInputType.text,
            controller: passwordController,
            decoration: InputDecoration(
              labelText: AppStrings.password,
              prefixIcon: Padding(
                padding: EdgeInsets.only(
                  left: context.paddingNormal.left,
                  right: context.paddingExtraLow.left,
                ),
                child: Icon(Icons.lock_outlined),
              ),
              suffixIcon: IconButton(
                padding: EdgeInsets.only(right: context.paddingLow.right),
                onPressed: () {},
                icon: Icon(Icons.visibility_off_outlined),
              ),
            ),
          ),
          SizedBox(height: SizedBoxHeight.top.value),

          // Login Button
          ElevatedButton(
            onPressed: () {},
            child: Text(
              AppStrings.login,
            ),
          ),
          TextButton(
              onPressed: () {
                NavigationService.instance
                    .navigateToPage(path: NavigationConstants.LONG_ONBOARDING);
              },
              child: Text(AppStrings.forgotPassword))
        ],
      ),
    );
  }
}
