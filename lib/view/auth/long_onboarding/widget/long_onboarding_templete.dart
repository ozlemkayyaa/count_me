import 'package:count_me/core/components/elevatedButton/next_button.dart';
import 'package:count_me/core/extension/context_extension.dart';
import 'package:flutter/material.dart';

class OnboardingPageTemplate extends StatelessWidget {
  final String question;
  final Widget body;
  //final VoidCallback onNext;

  const OnboardingPageTemplate({
    required this.question,
    required this.body,
    //required this.onNext,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Question
        Text(question, style: context.textTheme.headlineMedium),
        SizedBox(height: 120),

        // Options
        Expanded(child: body),
        SizedBox(height: 60),

        // // Next Button
        // NextButton(onNext: onNext),
        // SizedBox(height: 40),
      ],
    );
  }
}
