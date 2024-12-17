// ignore_for_file: avoid_print

import 'package:count_me/view/auth/long_onboarding/view/health/health_concern.dart';
import 'package:flutter/material.dart';
import 'package:count_me/core/components/elevatedButton/next_button.dart';

class HealthGroup extends StatefulWidget {
  final VoidCallback onNextGroup;
  const HealthGroup({required this.onNextGroup, super.key});

  @override
  State<HealthGroup> createState() => _HealthGroupState();
}

class _HealthGroupState extends State<HealthGroup> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _goToNextPage() {
    if (_currentPage < 0) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      setState(() {
        _currentPage++;
      });
    } else {
      widget.onNextGroup();
      print('Geçiş tetiklendi: PlanGroup');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              // HEALTH CONCERN
              HealthConcern(
                  pageController: _pageController, goToNextPage: _goToNextPage),
            ],
          ),
        ),
        NextButton(onNext: _goToNextPage),
        SizedBox(height: 40),
      ],
    );
  }
}
