import 'package:count_me/core/constants/navigation/navigation_constants.dart';
import 'package:count_me/core/init/navigation/navigation_service.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/app/index.dart';
import '../../../../core/constants/enums/index.dart';
import '../../../../core/extension/context_extension.dart';
import 'count_me_text_widget.dart';

class SplashBodyWidget extends StatelessWidget {
  const SplashBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      curve: Curves.fastOutSlowIn,
      opacity: 1.0,
      duration: const Duration(seconds: 2),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageEnum.splashBackground.toPng),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: PaddingHelper.fixed.getPadding(left: true, right: true),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: SizedBoxHeight.modal.value),

                    // App Icon
                    IconEnum.appIcon.toImage(height: context.height * 0.25),
                    SizedBox(height: SizedBoxHeight.mediumSmall.value),
                    // Count Me In Text
                    CountMeTextWidget(),
                    SizedBox(height: SizedBoxHeight.top.value),
                    // SubTitle
                    Text(
                      AppStrings.splashText,
                      style: context.textTheme.headlineSmall
                          ?.copyWith(color: AppColors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      onEnd: () {
        NavigationService.instance.navigateToPageClear(
          path: NavigationConstants.ONBOARDING,
        );
      },
    );
  }
}
