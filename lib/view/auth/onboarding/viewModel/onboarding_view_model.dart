import 'package:count_me/core/base/model/base_view_model.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'onboarding_view_model.g.dart';

class OnboardingViewModel = _OnboardingViewModelBase with _$OnboardingViewModel;

abstract class _OnboardingViewModelBase with Store, BaseViewModel {
  @override
  void setContext(BuildContext context) => viewModelContext = context;

  @override
  void init() {}
}
