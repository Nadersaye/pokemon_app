import 'package:flutter/material.dart';
import 'package:pokemon_app/features/home/domain/entities/pokemon_details_entity.dart';
import 'custom_pokemon_column.dart';

class PokemonDetailsBodyData extends StatelessWidget {
  final PokemonDetailsEntity pokemon;
  const PokemonDetailsBodyData({
    super.key,
    required this.pokemon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 80, bottom: 10),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: CutomPokemonColumn(
        pokemon: pokemon,
      ),
    );
  }
}
