import 'package:count_me/core/components/index.dart';
import 'package:flutter/material.dart';

class MotivationPageWidget extends StatelessWidget {
  final String image;
  //final String title;
  final InlineSpan title;
  final InlineSpan subtitle;

  const MotivationPageWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        children: [
          SizedBox(height: 80),
          Image.asset(image),
          SizedBox(height: 36),
          RichText(
            text: title,
          ),
          RichText(
            text: subtitle,
          ),
        ],
      ),
    );
  }
}
