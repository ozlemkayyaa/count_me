import 'package:count_me/core/constants/enums/border_enum.dart';
import 'package:count_me/core/constants/app/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    this.validator,
    this.labelText,
    this.hintText,
    this.keyboardType,
    this.prefixIcon,
    this.suffixIcon,
    this.textStyle,
    this.outlineInputBorder,
  });

  final TextEditingController controller;
  final String? Function(String?)? validator;
  final String? labelText;
  final String? hintText;
  final TextInputType? keyboardType;
  final bool obscureText = false;
  final Icon? prefixIcon;
  final IconButton? suffixIcon;
  final TextStyle? textStyle;
  final OutlineInputBorder? outlineInputBorder;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
      obscureText: obscureText,
      style: textStyle,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.grey,
        ),
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        prefixIconColor: AppColors.grey,
        suffixIconColor: AppColors.grey,
        border: outlineInputBorder,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderHelper.fix.circularRadius,
          borderSide: BorderSide(color: AppColors.mainGreen),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderHelper.fix.circularRadius,
          borderSide: BorderSide(color: AppColors.lightGrey),
        ),
        contentPadding: const EdgeInsets.only(top: 18, bottom: 18),
      ),
    );
  }
}
