import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../domain/entities/pokemon_details_entity.dart';
import 'custom_performane_list_view.dart';
import 'custom_pokemon_details_row.dart';
import 'custom_pokemon_details_row_data.dart';
import 'custom_pokemon_types_list_view.dart';

class CutomPokemonColumn extends StatelessWidget {
  final PokemonDetailsEntity pokemon;
  const CutomPokemonColumn({
    super.key,
    required this.pokemon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          pokemon.pokemonName,
          style: AppStyles.style34(context),
        ),
        const Gap(20),
        CustomPokemonTypesListView(
          types: pokemon.pokemonTypes!,
        ),
        const Gap(20),
        const CustomPokemonDetailsRow(),
        const Gap(10),
        CustomPokemonDetailsRowData(pokemon: pokemon),
        const Gap(30),
        Text('PERFORMANCE', style: AppStyles.style23(context)),
        const Gap(20),
        CustomPerformanceListView(
          pokemon: pokemon,
        ),
      ],
    );
  }
}
