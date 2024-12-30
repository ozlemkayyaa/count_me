import 'package:count_me/core/base/cubit/generic_cubit_state.dart';
import 'package:count_me/core/constants/app/index.dart';
import 'package:count_me/core/constants/enums/index.dart';
import 'package:count_me/core/constants/navigation/navigation_constants.dart';
import 'package:count_me/core/extension/context_extension.dart';
import 'package:count_me/core/init/navigation/navigation_service.dart';
import 'package:count_me/view/auth_cubit/register/cubit/register_cubit.dart';
import 'package:count_me/view/auth_cubit/register/view/register_view_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterFormWidget extends StatefulWidget {
  const RegisterFormWidget({super.key});

  @override
  State<RegisterFormWidget> createState() => _RegisterFormWidgetState();
}

class _RegisterFormWidgetState extends State<RegisterFormWidget> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegisterCubit>();

    return BlocConsumer<RegisterCubit, GenericCubitState>(
      listener: (context, state) {
        if (state.status == Status.success) {
          // Giriş başarılı olduğunda bir sayfaya yönlendir
          NavigationService.instance
              .navigateToPage(path: NavigationConstants.LOGIN);
        }
      },
      builder: (context, state) {
        return Form(
          child: Column(
            children: [
              // Name Field
              TextFormField(
                keyboardType: TextInputType.name,
                controller: nameController,
                decoration: InputDecoration(
                  labelText: AppStrings.name,
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(
                      left: context.paddingNormal.left,
                      right: context.paddingExtraLow.left,
                    ),
                    child: Icon(Icons.person_outline_outlined),
                  ),
                ),
              ),
              SizedBox(height: SizedBoxHeight.mediumSmall.value),

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

              // Register Button
              ElevatedButton(
                onPressed: () {
                  cubit.createUser(
                    nameController.text,
                    emailController.text,
                    passwordController.text,
                  );
                },
                child: Text(AppStrings.register),
              ),
            ],
          ),
        );
      },
    );
  }
}
