import 'package:flutter/material.dart';
import '../../../home/presentaion/views/widgets/custom_appbar.dart';
import 'widgets/onboarding_view_body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        body: OnboardingViewBody(),
      ),
    );
  }
}
