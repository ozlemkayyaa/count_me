import 'package:count_me/core/constants/app/app_colors.dart';
import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    super.key,
    this.appBar,
    this.body,
    this.backgroundColor,
    this.linearGradient,
  });

  final PreferredSizeWidget? appBar;
  final Widget? body;
  final Color? backgroundColor;
  final LinearGradient? linearGradient;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // On tap, unfocuses any text fields to hide the keyboard.
      // Ekrana dokunulduğunda, herhangi bir metin alanının odaklanmasını kaldırır ve klavyeyi gizler.
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: AppColors.whiteBackground,
        // App bar widget to display at the top, if provided.
        appBar: appBar,
        body: Stack(
          children: [
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: linearGradient, // Gradient varsa, buraya uygulanır.
                  color: linearGradient == null
                      ? backgroundColor
                      : null, // Yoksa backgroundColor kullanılır.
                ),
                child: body,
              ),
            ),
          ],
        ),
        // Prevents the scaffold from resizing when the keyboard appears, ensuring a more stable layout.
        // Klavye açıldığında Scaffold'un yeniden boyutlandırılmasını engeller, böylece daha sabit bir yerleşim sağlar.
        resizeToAvoidBottomInset: false,
      ),
    );
  }
}
