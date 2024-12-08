// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseLongOnboardingView<B extends BlocBase<S>, S> extends StatefulWidget {
  const BaseLongOnboardingView({
    super.key,
    required this.bloc,
    required this.onPageBuilder,
    this.onDispose,
    this.question,
    this.options,
    this.currentStep,
    this.totalSteps,
    this.onOptionSelected,
    this.onNext,
    this.optionsSubtitle,
  });

  final B bloc;
  final Widget Function(BuildContext context, B bloc, S state) onPageBuilder;
  final VoidCallback? onDispose;
  final String? question;
  final List<String>? options;
  final List<String>? optionsSubtitle;
  final int? currentStep;
  final int? totalSteps;
  final Function(int)? onOptionSelected;
  final VoidCallback? onNext;

  @override
  _BaseLongOnboardingViewState<B, S> createState() =>
      _BaseLongOnboardingViewState<B, S>();
}

class _BaseLongOnboardingViewState<B extends BlocBase<S>, S>
    extends State<BaseLongOnboardingView<B, S>> {
  late B bloc;

  @override
  void initState() {
    bloc = widget.bloc;
    super.initState();
  }

  @override
  void dispose() {
    bloc.close();
    if (widget.onDispose != null) widget.onDispose?.call();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<B>(
      create: (_) => bloc,
      child: BlocBuilder<B, S>(
        builder: (context, state) {
          return widget.onPageBuilder(context, bloc, state);
        },
      ),
    );
  }
}
