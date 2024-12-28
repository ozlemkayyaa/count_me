import 'package:count_me/core/constants/app/index.dart';
import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Kullanıcı etkileşimlerini engellemek için bir bariyer
        const ModalBarrier(
          dismissible: false,
          color: AppColors.barrierGrey, // Arka plan rengini yarı saydam yapar
        ),
        // Ortada Loading Indicator
        const Center(
          child: CircularProgressIndicator(
            color: AppColors.mainGreen,
          ),
        ),
      ],
    );
  }
}
