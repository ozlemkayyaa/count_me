import 'package:flutter/material.dart';

import '../../../../../core/constants/app/index.dart';
import '../../../../../core/constants/enums/index.dart';

class CustomModalButton extends StatelessWidget {
  const CustomModalButton({
    super.key,
    required this.title,
    required this.titleIcon,
    required this.onPressed,
  });

  final void Function() onPressed;
  final String title;
  final bool titleIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            titleIcon
                ? IconEnum.googleIcon.toImage(
                    height: ImageSize.iconImage.value,
                  )
                : Icon(
                    Icons.email_outlined,
                    color: AppColors.black,
                    size: 24,
                  ),
            SizedBox(width: SizedBoxWidth.small.value),
            Text(title),
          ],
        ),
      ),
    );
  }
}
