// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import 'package:mobx/mobx.dart';

import '../../../../core/base/model/base_view_model.dart';
part 'login_view_model.g.dart';

class LoginViewModel = _LoginViewModelBase with _$LoginViewModel;

abstract class _LoginViewModelBase with Store, BaseViewModel {
  @override
  void setContext(BuildContext context) => viewModelContext = context;

  @override
  void init() {}
}
