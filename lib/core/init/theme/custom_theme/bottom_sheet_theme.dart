import 'package:count_me/core/constants/app/index.dart';
import 'package:count_me/core/constants/enums/border_enum.dart';
import 'package:flutter/material.dart';

class AppBottomSheetTheme {
  AppBottomSheetTheme._();

  static BottomSheetThemeData bottomSheetTheme = BottomSheetThemeData(
    dragHandleSize: Size(300, 5),
    dragHandleColor: AppColors.black,
    showDragHandle: true,
    backgroundColor: AppColors.bottomSheetWhite,
    modalBackgroundColor: AppColors.white,
    modalBarrierColor: AppColors.barrierGrey,
    constraints: BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderHelper.xLarge.onlyTop),
  );
}
