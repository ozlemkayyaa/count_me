// ignore_for_file: avoid_print
import 'package:count_me/core/constants/enums/index.dart';
import 'package:count_me/core/extension/context_extension.dart';
import 'package:count_me/view/auth/register/widget/register_form_widget.dart';
import 'package:flutter/material.dart';

class RegisterBodyWidget extends StatelessWidget {
  const RegisterBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingHelper.fixed.getPadding(left: true, right: true),
      child: Column(
        children: [
          SizedBox(height: SizedBoxHeight.top.value),

          // Profile Image
          GestureDetector(
            onTap: () {
              print('Resme tıklandı!');
            },
            child: ImageEnum.user.toImage(height: context.height * 0.15),
          ),
          SizedBox(height: SizedBoxHeight.xxLarge.value),

          // Register TForm
          RegisterFormWidget(),
        ],
      ),
    );
  }
}
