import 'package:count_me/core/base/cubit/generic_cubit_state.dart';
import 'package:count_me/core/base/view/base_view_bloc.dart';
import 'package:count_me/core/components/index.dart';
import 'package:count_me/core/constants/app/index.dart';
import 'package:count_me/core/constants/navigation/navigation_constants.dart';
import 'package:count_me/core/init/navigation/navigation_service.dart';
import 'package:count_me/view/auth_cubit/splash/cubit/splash_cubit.dart';
import 'package:count_me/view/auth_cubit/splash/widget/splash_body_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<SplashCubit, GenericCubitState>(
      cubit: SplashCubit()..logicStarted(),
      onPageBuilder: (context, cubit, state) {
        if (state.status == Status.success) {
          SchedulerBinding.instance.addPostFrameCallback((_) {
            NavigationService.instance.navigateToPageClear(
              path: NavigationConstants.REGISTER,
            );
          });
        }
        return CustomScaffold(
          linearGradient: AppColors.linearGradient,
          body: SplashBodyWidget(),
        );
      },
    );
  }
}
