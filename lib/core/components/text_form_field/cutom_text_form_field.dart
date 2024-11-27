import 'package:count_me/core/constants/enums/border_enum.dart';
import 'package:count_me/core/constants/app/app_colors.dart';
import 'package:flutter/material.dart';

TextFormField customTextFormField({
  required TextEditingController controller,
  String? Function(String?)? validator,
  String? labelText,
  String? hintText,
  TextInputType keyboardType = TextInputType.text,
  bool obscureText = false,
  Icon? prefixIcon,
  IconButton? suffixIcon,
  TextStyle? textStyle,
  OutlineInputBorder? outlineInputBorder,
}) {
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
