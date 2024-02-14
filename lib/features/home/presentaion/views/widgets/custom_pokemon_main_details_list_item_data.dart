import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../domain/entities/pokemon_details_entity.dart';
import 'custom_pokemon_types_list_view.dart';

class CustomPokemonMainDetailsListItemData extends StatelessWidget {
  const CustomPokemonMainDetailsListItemData({
    super.key,
    required this.pokemon,
  });

  final PokemonDetailsEntity pokemon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(pokemon.pokemonName),
        const Gap(10),
        Text('#${pokemon.pokemonId}'),
        const Gap(10),
        CustomPokemonTypesListView(types: pokemon.pokemonTypes!),
      ],
    );
  }
}
