import 'package:count_me/core/constants/app/app_key.dart';
import 'package:count_me/core/constants/app/index.dart';
import 'package:count_me/core/init/navigation/navigation_route.dart';
import 'package:count_me/core/init/navigation/navigation_service.dart';
import 'package:count_me/view/auth_cubit/login/cubit/login_cubit.dart';
import 'package:count_me/view/auth_cubit/register/cubit/register_cubit.dart';
import 'package:count_me/view/auth_cubit/splash/cubit/splash_cubit.dart';
import 'package:count_me/view/auth_cubit/splash/view/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/init/theme/app_theme_light.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<LoginCubit>(create: (context) => LoginCubit()),
      BlocProvider<RegisterCubit>(create: (context) => RegisterCubit()),
      BlocProvider<SplashCubit>(create: (context) => SplashCubit()),
      // BlocProvider<OnboardingBloc>(create: (context) => OnboardingBloc()),
      // BlocProvider<LongOnboardingBloc>(
      //     create: (context) => LongOnboardingBloc()),
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
      home: SplashView(),
      debugShowCheckedModeBanner: false,
      scaffoldMessengerKey: scaffoldMessengerKey,
    );
  }
}
