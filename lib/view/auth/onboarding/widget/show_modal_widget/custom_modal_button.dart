import 'package:count_me/core/components/index.dart';
import 'package:flutter/material.dart';
import '../../../../../core/constants/app/index.dart';
import '../../../../../core/constants/enums/index.dart';

SizedBox customModalButton({
  required void Function()? onPressed,
  required String title,
  required bool titleIcon,
}) =>
    SizedBox(
      width: double.infinity,
      child: customOutlinedButton(
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
              customText(
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
