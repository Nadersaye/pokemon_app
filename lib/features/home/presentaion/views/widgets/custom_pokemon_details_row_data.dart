import 'package:flutter/material.dart';
import 'package:pokemon_app/core/utils/app_strings.dart';
import '../../../domain/entities/pokemon_details_entity.dart';
import 'custom_weight_value.dart';

class CustomPokemonDetailsRowData extends StatelessWidget {
  const CustomPokemonDetailsRowData({
    super.key,
    required this.pokemon,
  });

  final PokemonDetailsEntity pokemon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomWeightValue(
            value: pokemon.pokemonWeight,
            text: AppStrings.weightUnitMeasurementText,
          ),
          CustomWeightValue(
            value: pokemon.pokemonHeight,
            text: AppStrings.heightUnitMeasurementText,
          ),
        ],
      ),
    );
  }
}
