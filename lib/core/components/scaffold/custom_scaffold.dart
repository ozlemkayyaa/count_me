import 'package:flutter/material.dart';

GestureDetector customScaffold({
  PreferredSizeWidget? appBar, // Optional AppBar widget
  Widget? body, // Optional Body widget
  Color? backgroundColor,
  LinearGradient? linearGradient,
}) =>
    GestureDetector(
      // On tap, unfocuses any text fields to hide the keyboard.
      // Ekrana dokunulduğunda, herhangi bir metin alanının odaklanmasını kaldırır ve klavyeyi gizler.
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: backgroundColor,
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
                // Main content of the scaffold, displayed in the body area.
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
