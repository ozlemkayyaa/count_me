import 'package:count_me/core/components/outlinedButton/custom_outlined_button.dart';
import 'package:count_me/core/extension/context_extension.dart';
import 'package:flutter/material.dart';

class OnboardingStep extends StatelessWidget {
  final String question;
  final List<String>? options;
  final int? selectedOption;
  final Function(int) onOptionSelected;

  const OnboardingStep({
    required this.question,
    required this.options,
    required this.selectedOption,
    required this.onOptionSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(question, style: context.textTheme.headlineMedium),
        SizedBox(height: 120),
        Expanded(
          child: ListView.builder(
            itemCount: options?.length ?? 0,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: CustomOutlinedButton(
                  title: options![index],
                  isSelected: selectedOption == index,
                  onPressed: () => onOptionSelected(index),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
