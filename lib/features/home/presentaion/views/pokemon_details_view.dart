import 'package:flutter/material.dart';
import 'package:pokemon_app/features/home/domain/entities/pokemon_details_entity.dart';
import 'widgets/pokemon_details_view_body.dart';

class PokemonDetailsView extends StatelessWidget {
  final PokemonDetailsEntity pokemonDetails;
  const PokemonDetailsView({super.key, required this.pokemonDetails});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("pokemon"),
        ),
        body: PokemonDetailsViewBody(
          pokemon: pokemonDetails,
        ));
  }
}
