import '../../../../core/components/index.dart';
import '../widget/onboarding_body_widget.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: SingleChildScrollView(
        child: OnboardingBodyWidget(),
      ),
    );
  }
}
