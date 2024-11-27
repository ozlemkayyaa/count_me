import 'package:count_me/core/components/index.dart';
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
      child: CustomOutlinedButton(
        onPressed: onPressed,
        child: Padding(
          padding:
              PaddingHelper.mediumLarge.getPadding(top: true, bottom: true),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              titleIcon
                  ? ImageEnum.google.toImage(
                      height: ImageSize.small.value,
                    )
                  : Icon(
                      Icons.email_outlined,
                      color: AppColors.black,
                      size: 24,
                    ),
              SizedBox(width: SizedBoxWidth.smallMedium.value),
              CustomText(
                title: title,
                color: AppColors.black,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
