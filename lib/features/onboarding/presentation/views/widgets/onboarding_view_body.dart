import 'package:flutter/material.dart';
import 'package:pokemon_app/core/utils/app_images.dart';
import 'onboarding_body_column.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.imageBackgroundOnboarding),
          fit: BoxFit.fill,
        ),
      ),
      child: const OnBoardingBodyColumn(),
    );
  }
}
