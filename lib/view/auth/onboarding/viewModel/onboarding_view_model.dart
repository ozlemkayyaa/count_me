// ignore_for_file: library_private_types_in_public_api

import 'package:mobx/mobx.dart';

part 'onboarding_view_model.g.dart';

class OnboardingViewModel = _OnboardingViewModelBase with _$OnboardingViewModel;

abstract class _OnboardingViewModelBase with Store {}
