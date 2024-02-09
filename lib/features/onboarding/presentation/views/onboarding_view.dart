import 'package:flutter/material.dart';
import 'widgets/onboarding_view_body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Pokemon App'),
        ),
        body: const OnboardingViewBody(),
      ),
    );
  }
}
