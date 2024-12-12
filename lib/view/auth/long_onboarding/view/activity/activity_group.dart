import 'package:count_me/core/components/elevatedButton/next_button.dart';
import 'package:count_me/core/constants/app/app_colors.dart';
import 'package:count_me/core/constants/app/app_strings.dart';
import 'package:count_me/core/constants/enums/image_enum.dart';
import 'package:count_me/core/extension/index.dart';
import 'package:count_me/view/auth/long_onboarding/view/activity/current_activity_level.dart';
import 'package:count_me/view/auth/long_onboarding/view/activity/topic_weight_loss.dart';
import 'package:count_me/view/auth/long_onboarding/widget/motivation_page_widget.dart';
import 'package:flutter/material.dart';

class ActivityGroup extends StatefulWidget {
  final VoidCallback onNextGroup; // Activity grubuna geçmek için callback
  const ActivityGroup({required this.onNextGroup, super.key});

  @override
  State<ActivityGroup> createState() => _ActivityGroupState();
}

class _ActivityGroupState extends State<ActivityGroup> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _goToNextPage() {
    if (_currentPage < 3) {
      // Activity grubundaki toplam sayfa
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      setState(() {
        _currentPage++;
      });
    } else {
      widget.onNextGroup(); // Health grubuna geçiş
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
              CurrentActivityLevel(
                  pageController: _pageController, goToNextPage: _goToNextPage),
              TopicWeightLoss(
                  pageController: _pageController, goToNextPage: _goToNextPage),
              MotivationPageWidget(
                image: ImageEnum.motivation3.toPng,
                title: TextSpan(
                  text: AppStrings.motivation3,
                  style: context.textTheme.headlineSmall,
                ),
                subtitle: TextSpan(
                    text: AppStrings.motivation4,
                    style: context.textTheme.headlineMedium!
                        .copyWith(color: AppColors.mainGreen),
                    children: [
                      TextSpan(
                        text: AppStrings.motivation5,
                        style: context.textTheme.headlineSmall,
                      ),
                    ]),
              ),
            ],
          ),
        ),
        NextButton(onNext: _goToNextPage),
        SizedBox(height: 40),
      ],
    );
  }
}
