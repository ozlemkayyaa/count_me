import 'package:count_me/core/constants/app/app_colors.dart';
import 'package:count_me/core/constants/enums/border_enum.dart';
import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    super.key,
    required this.onPressed,
    required this.child,
  });

  final void Function() onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
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
  }
}
