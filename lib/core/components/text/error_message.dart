import 'package:count_me/core/extension/index.dart';
import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  final String errorMessage;

  const ErrorMessage({required this.errorMessage, super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorMessage,
        style: context.textTheme.bodyLarge?.copyWith(color: Colors.red),
      ),
    );
  }
}
