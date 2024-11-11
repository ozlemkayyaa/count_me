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
}) =>
    TextFormField(
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
      obscureText: obscureText,
      style: textStyle,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: outlineInputBorder,
      ),
    );
