import 'package:flutter/material.dart';
import 'package:pokemon_app/core/utils/app_strings.dart';
import 'custom_weight_text.dart';

class CustomPokemonDetailsRow extends StatelessWidget {
  const CustomPokemonDetailsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomWeightText(
          text: AppStrings.weightText,
        ),
        CustomWeightText(
          text: AppStrings.heightText,
        ),
      ],
    );
  }
}
