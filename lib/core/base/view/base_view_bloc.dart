// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseView<B extends BlocBase<S>, S> extends StatefulWidget {
  const BaseView({
    super.key,
    required this.bloc,
    required this.onPageBuilder,
    this.onDispose,
  });

  final B bloc; // Bloc veya Cubit instance
  final Widget Function(BuildContext context, B bloc, S state) onPageBuilder;
  final VoidCallback? onDispose;

  @override
  _BaseViewState<B, S> createState() => _BaseViewState<B, S>();
}

class _BaseViewState<B extends BlocBase<S>, S> extends State<BaseView<B, S>> {
  late B bloc;

  @override
  void initState() {
    bloc = widget.bloc;
    super.initState();
  }

  @override
  void dispose() {
    bloc.close(); // Bloc'un otomatik olarak kapanmasını sağlar
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
