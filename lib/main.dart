import 'package:count_me/core/constants/app/app_key.dart';
import 'package:count_me/core/constants/app/index.dart';
import 'package:count_me/core/init/navigation/navigation_route.dart';
import 'package:count_me/core/init/navigation/navigation_service.dart';
import 'package:count_me/view/auth/login/cubit/login_cubit.dart';
import 'package:count_me/view/auth/long_onboarding/cubit/long_onboarding_cubit.dart';
import 'package:count_me/view/auth/long_onboarding/view/long_onboarding_view.dart';
import 'package:count_me/view/auth/onboarding/cubit/onboarding_cubit.dart';
import 'package:count_me/view/auth/register/cubit/register_cubit.dart';
import 'package:count_me/view/auth/splash/cubit/splash_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/init/theme/app_theme_light.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<LoginCubit>(create: (context) => LoginCubit()),
      BlocProvider<RegisterCubit>(create: (context) => RegisterCubit()),
      BlocProvider<SplashCubit>(create: (context) => SplashCubit()),
      BlocProvider<OnboardingCubit>(create: (context) => OnboardingCubit()),
      BlocProvider<LongOnboardingCubit>(
          create: (context) => LongOnboardingCubit()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) =>
          NavigationRoute.instance.generateRoute(settings),
      navigatorKey: NavigationService.instance.navigatorKey,
      title: AppConstants.APP_NAME,
      theme: AppThemeLight.instance.theme,
      home: LongOnboardingView(),
      debugShowCheckedModeBanner: false,
      scaffoldMessengerKey: scaffoldMessengerKey,
    );
  }
}
