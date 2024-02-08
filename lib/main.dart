import 'package:flutter/material.dart';
import 'package:pokemon_app/features/onboarding/presentation/views/onboarding_view.dart';

void main() {
  runApp(const PokemonApp());
}

class PokemonApp extends StatelessWidget {
  const PokemonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokemon App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const OnboardingView(),
    );
  }
}
