import 'custom_theme/elevated_button_theme.dart';
import 'custom_theme/outlined_button_theme.dart';
import 'custom_theme/text_button_theme.dart';
import 'custom_theme/text_field_theme.dart';

import '../../constants/app/app_colors.dart';
import 'app_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemeLight extends AppTheme {
  static AppThemeLight? _instance;
  static AppThemeLight get instance {
    _instance ??= AppThemeLight._init();
    return _instance!;
  }

  AppThemeLight._init();

  @override
  ThemeData get theme => ThemeData(
        appBarTheme: const AppBarTheme(
          scrolledUnderElevation: 0,
        ),
        fontFamily: GoogleFonts.poppins().fontFamily,
        scaffoldBackgroundColor: AppColors.whiteBackground,
        useMaterial3: true,
        elevatedButtonTheme: AppElevatedButtonTheme.elevatedButtonTheme,
        outlinedButtonTheme: AppOutlinedButtontheme.outlinedButtonTheme,
        textButtonTheme: AppTextButtontheme.textButtonTheme,
        inputDecorationTheme: AppTextFieldTheme.lightInputDecorationTheme,
      );
}
