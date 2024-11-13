import 'package:count_me/app/components/widgets/custom_scaffold.dart';
import 'package:count_me/app/presentation/auth/register/widget/register_body.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return customScaffold(
      body: registerBody(context),
    );
  }
}
