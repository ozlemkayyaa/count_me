import 'package:count_me/app/components/constants/app_colors.dart';
import 'package:count_me/app/components/enums/border_helper.dart';
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
