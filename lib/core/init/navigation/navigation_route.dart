import 'package:count_me/view/auth/login/view/login_view.dart';
import 'package:count_me/view/auth/long_onboarding/view/long_onboarding_view.dart';
import 'package:count_me/view/auth/onboarding/view/onboarding_view.dart';
import 'package:count_me/view/auth/register/view/register_view.dart';
import 'package:count_me/view/home/view/home_view.dart';
import 'package:flutter/material.dart';
import '../../../view/auth/splash/view/splash_view.dart';
import '../../components/card/not_found_navigation_widget.dart';
import '../../constants/navigation/navigation_constants.dart';

class NavigationRoute {
  static final NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;

  NavigationRoute._init();

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.SPLASH:
        return normalNavigate(const SplashView(), NavigationConstants.SPLASH);
      case NavigationConstants.ONBOARDING:
        return normalNavigate(
            const OnboardingView(), NavigationConstants.ONBOARDING);
      case NavigationConstants.LONG_ONBOARDING:
        return normalNavigate(
            const LongOnboardingView(), NavigationConstants.LONG_ONBOARDING);
      case NavigationConstants.REGISTER:
        return normalNavigate(
            const RegisterView(), NavigationConstants.REGISTER);
      case NavigationConstants.LOGIN:
        return normalNavigate(const LoginView(), NavigationConstants.LOGIN);
      case NavigationConstants.HOME:
        return normalNavigate(const HomeView(), NavigationConstants.HOME);
      default:
        return MaterialPageRoute(
            builder: (context) => const NotFoundNavigationWidget());
    }
  }

  MaterialPageRoute normalNavigate(Widget widget, String pageName) {
    return MaterialPageRoute(
      builder: (context) => widget,
      settings: RouteSettings(name: pageName),
    );
  }
}
