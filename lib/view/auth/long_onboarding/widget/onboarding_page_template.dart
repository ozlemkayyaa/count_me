import 'package:count_me/core/extension/context_extension.dart';
import 'package:flutter/material.dart';

class OnboardingPageTemplate extends StatelessWidget {
  final String? question;
  final Widget body;
  final bool? heightSizedBox;
  final Padding? padding;

  const OnboardingPageTemplate({
    this.question,
    required this.body,
    super.key,
    this.heightSizedBox,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Question
        SizedBox(height: 60),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: Center(
            child: Text(question!, style: context.textTheme.headlineMedium),
          ),
        ),
        (heightSizedBox == null) ? SizedBox(height: 120) : SizedBox(height: 70),

        // Options
        Expanded(child: body),
        SizedBox(height: 60),
      ],
    );
  }
}
