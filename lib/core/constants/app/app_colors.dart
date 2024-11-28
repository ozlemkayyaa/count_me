import 'package:flutter/material.dart';

final class AppColors {
  const AppColors._();

  static const mainGreen = Color(0xFF67BD6E);
  static const backgroundGreen = Color(0xFFD9E3D0);
  static const whiteBackground = Color(0xFFFFFBFA);

  static const reddishOrange = Color(0xFFF47551);
  static const lightReddish = Color(0xFFF2CFCB);

  static const white = Color(0xFFFEFEFE);
  static const bottomSheetWhite = Color(0xFFF4F4F4);
  static const secondaryBlue = Color(0xFFD7E6FF);

  static const lightGrey = Color(0xFFE9E9E9);
  static const grey = Color(0xFF909090);
  static const barrierGrey = Color(0xFF1E1E1EA6);
  static const darkGrey = Color(0xFF45444C);
  static const disableButtonGrey = Color(0xFFC0C0C0);

  static const black = Color(0xFF121212);

  static const LinearGradient linearGradient = LinearGradient(
    colors: [
      Color(0xFF04441C), // Başlangıç rengi
      Color(0xFF88CC52), // Bitiş rengi
    ],
    begin: Alignment.topLeft, // Sol üst köşe
    end: Alignment.bottomRight, // Sağ alt köşe
  );
}
