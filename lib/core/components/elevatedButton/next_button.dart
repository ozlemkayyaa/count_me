import 'package:count_me/core/constants/app/app_strings.dart';
import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key, required this.onNext});

  final VoidCallback onNext;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onNext, child: Text(AppStrings.nextButton));
  }
}
