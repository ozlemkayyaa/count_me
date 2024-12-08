import 'package:count_me/core/components/index.dart';
import 'package:count_me/core/components/outlinedButton/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class LongOnboardingView extends StatelessWidget {
  const LongOnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: CustomOutlinedButton(
                leadingIcon: Icons.woman,
                trailingIcon: Icons.abc,
                title: "Women",
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
