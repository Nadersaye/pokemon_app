import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pokemon_app/core/functions/cached_my_network_image.dart';
import 'package:pokemon_app/features/home/domain/entities/pokemon_details_entity.dart';
import 'package:pokemon_app/features/home/presentaion/views/widgets/custom_pokemon_types_list_view.dart';

class CustomPokemonMainDetailsListItem extends StatelessWidget {
  final PokemonDetailsEntity pokemon;
  const CustomPokemonMainDetailsListItem({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 5),
          )
        ],
      ),
      child: Row(children: [
        cachedMyNetworkImage(
            imageUrl: pokemon.pokemonImageUrl, width: 80, height: 100),
        const Gap(10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(pokemon.pokemonName),
            const Gap(10),
            Text('#${pokemon.pokemonId}'),
            const Gap(10),
            CustomPokemonTypesListView(types: pokemon.pokemonTypes!),
          ],
        )
      ]),
    );
  }
}
