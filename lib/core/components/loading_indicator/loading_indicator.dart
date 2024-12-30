import 'dart:ui';

import 'package:count_me/core/constants/app/index.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    double size =
        MediaQuery.of(context).size.width * 0.3; // %30 oranında genişlik
    return Stack(
      children: [
        // Flu etkisi için arka planın bulanıklaştırılması
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 7.0, sigmaY: 7.0), // Flu efekt
          child: Container(
            color: AppColors.disableButtonGrey
                .withOpacity(0.3), // Daha grimsi bir renk ve opaklık
          ),
        ),
        // Kullanıcı etkileşimlerini engellemek için bir bariyer
        const ModalBarrier(
          dismissible: false,
          color: Colors
              .transparent, // Barrier transparan çünkü flu etkisi yukarıda eklendi
        ),
        // Ortada Loading Indicator
        Center(
          child: Lottie.asset(
            "assets/lottie/loading.json",
            height: size,
            width: size,
          ),
        ),
      ],
    );
  }
}
