// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseView<C extends Cubit<S>, S> extends StatefulWidget {
  const BaseView({
    super.key,
    required this.cubit,
    required this.onPageBuilder,
    this.onDispose,
  });

  final C cubit; // Cubit instance
  final Widget Function(BuildContext context, C cubit, S state) onPageBuilder;
  final VoidCallback? onDispose;

  @override
  _BaseViewState<C, S> createState() => _BaseViewState<C, S>();
}

class _BaseViewState<C extends Cubit<S>, S> extends State<BaseView<C, S>> {
  late C cubit;

  @override
  void initState() {
    cubit = widget.cubit;
    super.initState();
  }

  @override
  void dispose() {
    cubit.close(); // Cubit'in otomatik olarak kapanmasını sağlar
    if (widget.onDispose != null) widget.onDispose?.call();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<C>(
      create: (_) => cubit,
      child: BlocBuilder<C, S>(
        builder: (context, state) {
          return widget.onPageBuilder(context, cubit, state);
        },
      ),
    );
  }
}
