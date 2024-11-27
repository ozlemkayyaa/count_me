import '../../../../core/components/scaffold/custom_scaffold.dart';
import '../widget/register_body_widget.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return customScaffold(
      body: RegisterBodyWidget(),
    );
  }
}
