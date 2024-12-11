import 'package:count_me/core/components/elevatedButton/next_button.dart';
import 'package:count_me/view/auth/long_onboarding/view/profile/birthday_select.dart';
import 'package:count_me/view/auth/long_onboarding/view/profile/current_goals.dart';
import 'package:count_me/view/auth/long_onboarding/view/profile/gender_select.dart';
import 'package:count_me/view/auth/long_onboarding/view/profile/height_select.dart';
import 'package:count_me/view/auth/long_onboarding/view/profile/current_weight_select.dart';
import 'package:count_me/view/auth/long_onboarding/view/profile/ideal_weight_select.dart';
import 'package:count_me/view/auth/long_onboarding/view/profile/name_input.dart';
import 'package:flutter/material.dart';

class ProfileGroup extends StatefulWidget {
  final VoidCallback onNextGroup; // Activity grubuna geçmek için callback
  const ProfileGroup({required this.onNextGroup, super.key});

  @override
  State<ProfileGroup> createState() => _ProfileGroupState();
}

class _ProfileGroupState extends State<ProfileGroup> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _goToNextPage() {
    if (_currentPage < 6) {
      // Profile grubundaki toplam sayfa
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      setState(() {
        _currentPage++;
      });
    } else {
      widget.onNextGroup(); // Activity grubuna geçiş
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
              CurrentGoals(
                  pageController: _pageController, goToNextPage: _goToNextPage),
              GenderSelect(
                  pageController: _pageController, goToNextPage: _goToNextPage),
              BirthdaySelect(
                  pageController: _pageController, goToNextPage: _goToNextPage),
              HeightSelect(
                  pageController: _pageController, goToNextPage: _goToNextPage),
              CurrentWeightSelect(
                  pageController: _pageController, goToNextPage: _goToNextPage),
              IdealWeightSelect(
                  pageController: _pageController, goToNextPage: _goToNextPage),
              NameInput(
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
