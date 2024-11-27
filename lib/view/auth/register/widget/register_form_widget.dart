import 'package:flutter/material.dart';

import '../../../../core/components/index.dart';
import '../../../../core/constants/app/index.dart';
import '../../../../core/constants/enums/index.dart';
import '../viewModel/register_view_model.dart';

class RegisterFormWidget extends StatelessWidget {
  const RegisterFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          customTextFormField(
            keyboardType: TextInputType.name,
            controller: RegisterViewModel().nameController,
            labelText: AppStrings.name,
            textStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w100,
              color: AppColors.darkGrey,
            ),
            prefixIcon: Icon(
              Icons.person_outline_outlined,
            ),
          ),
          SizedBox(height: SizedBoxHeight.medium.value),
          customTextFormField(
            keyboardType: TextInputType.emailAddress,
            controller: RegisterViewModel().nameController,
            labelText: AppStrings.email,
            textStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w100,
              color: AppColors.darkGrey,
            ),
            prefixIcon: Icon(
              Icons.email_outlined,
            ),
          ),
          SizedBox(height: SizedBoxHeight.medium.value),
          customTextFormField(
            keyboardType: TextInputType.text,
            controller: RegisterViewModel().nameController,
            labelText: AppStrings.password,
            textStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w100,
              color: AppColors.darkGrey,
            ),
            prefixIcon: Icon(
              Icons.lock_outlined,
            ),
            suffixIcon: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.visibility_off_outlined,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
