import 'package:count_me/app/components/enums/image_constants.dart';
import 'package:count_me/app/components/enums/image_size.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ImageConstants.onboarding1.toImage(
          width: 380,
          height: 380,
        ),
      ),
    );
  }
}
