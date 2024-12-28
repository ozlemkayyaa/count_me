import 'package:count_me/core/base/cubit/generic_cubit_state.dart';
import 'package:count_me/core/constants/app/app_key.dart';
import 'package:count_me/core/constants/app/index.dart';
import 'package:count_me/core/constants/navigation/navigation_constants.dart';
import 'package:count_me/core/extension/index.dart';
import 'package:count_me/core/init/navigation/navigation_service.dart';
import 'package:count_me/view/auth_cubit/login/cubit/login_cubit.dart';
import 'package:count_me/view/auth_cubit/login/view/login_view_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/constants/enums/index.dart';

class LoginFormWidget extends StatelessWidget with LoginViewMixin {
  LoginFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginCubit>();

    return BlocConsumer<LoginCubit, GenericCubitState>(
      listener: (context, state) {
        if (state.status == Status.success) {
          // Giriş başarılı olduğunda bir sayfaya yönlendir
          NavigationService.instance
              .navigateToPage(path: NavigationConstants.HOME);
        }
      },
      builder: (context, state) {
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
                onPressed: () {
                  cubit.login(
                    emailController.text,
                    passwordController.text,
                  );
                },
                child: Text(AppStrings.login),
              ),
              TextButton(
                  onPressed: () {
                    NavigationService.instance
                        .navigateToPage(path: NavigationConstants.HOME);
                  },
                  child: Text(AppStrings.forgotPassword))
            ],
          ),
        );
      },
    );
  }
}
