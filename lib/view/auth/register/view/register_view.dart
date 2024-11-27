import 'package:flutter/material.dart';

import '../../../../core/components/scaffold/custom_scaffold.dart';
import '../widget/register_body_widget.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: RegisterBodyWidget(),
    );
  }
}
