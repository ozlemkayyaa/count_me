import 'package:flutter/material.dart';

import '../../../../core/constants/app/index.dart';
import '../../../../core/constants/enums/index.dart';
import '../view/register_view_mixin.dart';

class RegisterFormWidget extends StatelessWidget with RegisterViewMixin {
  RegisterFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          // Name Field
          TextFormField(
            keyboardType: TextInputType.name,
            controller: nameController,
            decoration: InputDecoration(
              labelText: AppStrings.name,
              prefixIcon: Icon(Icons.person_outline_outlined),
            ),
          ),
          SizedBox(height: SizedBoxHeight.medium.value),

          // Email Field
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            controller: emailController,
            decoration: InputDecoration(
              labelText: AppStrings.email,
              prefixIcon: Icon(Icons.email_outlined),
            ),
          ),
          SizedBox(height: SizedBoxHeight.medium.value),

          // Password Field
          TextFormField(
            keyboardType: TextInputType.text,
            controller: passwordController,
            decoration: InputDecoration(
              labelText: AppStrings.password,
              prefixIcon: Icon(Icons.lock_outlined),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.visibility_off_outlined),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
