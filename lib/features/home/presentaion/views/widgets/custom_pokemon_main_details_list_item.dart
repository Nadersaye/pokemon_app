import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pokemon_app/core/functions/cached_my_network_image.dart';
import 'package:pokemon_app/features/home/domain/entities/pokemon_details_entity.dart';
import 'custom_pokemon_main_details_list_item_data.dart';

class CustomPokemonMainDetailsListItem extends StatelessWidget {
  final PokemonDetailsEntity pokemon;
  const CustomPokemonMainDetailsListItem({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
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
        CustomPokemonMainDetailsListItemData(pokemon: pokemon)
      ]),
    );
  }
}
