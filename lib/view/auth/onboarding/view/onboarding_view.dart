import 'package:count_me/core/components/scaffold/custom_scaffold.dart';
import 'package:count_me/view/auth/onboarding/widget/onboarding_body.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return customScaffold(
      body: SingleChildScrollView(
        child: onboardingBody(context),
      ),
    );
  }
}
