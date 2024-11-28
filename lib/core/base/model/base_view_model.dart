import 'package:count_me/core/init/navigation/navigation_service.dart';
import 'package:flutter/material.dart';

mixin BaseViewModel {
  late BuildContext viewModelContext;

  // ICoreDio coreDio = NetworkManager.instance.coreDio;

  NavigationService navigation = NavigationService.instance;

  void setContext(BuildContext context);
  void init();
}
