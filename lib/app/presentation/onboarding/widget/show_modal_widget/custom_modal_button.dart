import 'package:flutter/material.dart';
import '../../../../components/constants/index.dart';
import '../../../../components/enums/index.dart';
import '../../../../components/widgets/index.dart';

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
                  ? ImageConstants.google.toImage(
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
