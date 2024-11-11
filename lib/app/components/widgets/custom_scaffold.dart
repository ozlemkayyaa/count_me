import 'package:flutter/material.dart';

GestureDetector customScaffold({
  PreferredSizeWidget? appBar, // Optional AppBar widget
  Widget? body, // Optional Body widget
}) =>
    GestureDetector(
      // On tap, unfocuses any text fields to hide the keyboard.
      // Ekrana dokunulduğunda, herhangi bir metin alanının odaklanmasını kaldırır ve klavyeyi gizler.
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        // App bar widget to display at the top, if provided.
        appBar: appBar,
        // Main content of the scaffold, displayed in the body area.
        body: body,
        // Prevents the scaffold from resizing when the keyboard appears, ensuring a more stable layout.
        // Klavye açıldığında Scaffold'un yeniden boyutlandırılmasını engeller, böylece daha sabit bir yerleşim sağlar.
        resizeToAvoidBottomInset: false,
      ),
    );
