import 'package:count_me/core/extension/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:count_me/core/constants/app/app_colors.dart';

class StepperWidget extends StatelessWidget {
  final int currentStep;

  const StepperWidget({
    super.key,
    required this.currentStep,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteBackground,
      //foregroundDecoration: BoxDecoration(color: AppColors.whiteBackground),
      height: 56,
      width: 300,

      child: Theme(
        data: Theme.of(context).copyWith(
          // Stepper teması özelleştiriliyor
          canvasColor: Colors.transparent, // Stepper'in arka planını kaldırır
          shadowColor: Colors.transparent, // Gölgeyi kaldırır
          colorScheme: ColorScheme.light(
            primary: AppColors.black, // Aktif step rengi
            onPrimary: AppColors.whiteBackground, // Aktif step index rengi
          ),
        ),
        child: Stepper(
          stepIconHeight: 24,
          stepIconWidth: 24,
          elevation: 0,
          physics: NeverScrollableScrollPhysics(),
          type: StepperType.horizontal,
          currentStep: currentStep,
          steps: List.generate(4, (index) {
            final isActive = index <= currentStep;
            final isConnectorVisible = index < currentStep;

            return Step(
              stepStyle: StepStyle(
                  connectorColor: isConnectorVisible
                      ? AppColors.black // Connector tamamlananlarda siyah
                      : Colors.transparent, // Diğerlerinde görünmez
                  connectorThickness: isActive ? 0.5 : 0,
                  color: isActive ? AppColors.black : AppColors.whiteBackground,
                  indexStyle: context.textTheme.labelLarge?.copyWith(
                    color:
                        isActive ? AppColors.whiteBackground : AppColors.black,
                    fontWeight: FontWeight.w600,
                  )),
              state: index == 3 && currentStep == 3
                  ? StepState.complete
                  : StepState.disabled,
              title: const SizedBox.shrink(),
              content: const SizedBox.shrink(),
              isActive: index == currentStep,
            );
          }),
          controlsBuilder: (context, details) {
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
