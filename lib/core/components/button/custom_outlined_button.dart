import 'package:count_me/core/constants/app/app_colors.dart';
import 'package:count_me/core/constants/enums/border_enum.dart';
import 'package:flutter/material.dart';

OutlinedButton customOutlinedButton({
  required void Function()? onPressed,
  required Widget child,
}) =>
    OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(320, 65),
        side: BorderSide(color: AppColors.lightGrey),
        shape: RoundedRectangleBorder(
          borderRadius: BorderHelper.small.circularRadius,
        ),
      ),
      onPressed: onPressed,
      child: child,
    );
