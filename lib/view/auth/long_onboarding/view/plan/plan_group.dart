import 'package:count_me/core/base/state/base_state.dart';
import 'package:count_me/core/components/index.dart';
import 'package:flutter/material.dart';

class PlanGroup extends StatefulWidget {
  final VoidCallback onNextGroup;
  const PlanGroup({super.key, required this.onNextGroup});

  @override
  State<PlanGroup> createState() => _PlanGroupState();
}

class _PlanGroupState extends BaseState<PlanGroup> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Center(
        child: Text("Plan Group"),
      ),
    );
  }
}
