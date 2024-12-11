import 'package:count_me/core/extension/context_extension.dart';
import 'package:flutter/material.dart';

class OnboardingPageTemplate extends StatelessWidget {
  final String question;
  final Widget body;
  final bool? heightSizedBox;

  const OnboardingPageTemplate({
    required this.question,
    required this.body,
    super.key,
    this.heightSizedBox,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Question
        SizedBox(height: 60),
        Text(question, style: context.textTheme.headlineMedium),
        (heightSizedBox == null) ? SizedBox(height: 120) : SizedBox(height: 70),

        // Options
        Expanded(child: body),
        SizedBox(height: 60),
      ],
    );
  }
}
