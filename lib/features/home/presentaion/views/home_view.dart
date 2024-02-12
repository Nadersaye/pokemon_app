import 'package:flutter/material.dart';
import '../../domain/entities/pokemon_details_entity.dart';
import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemon App'),
      ),
      body: HomeViewBody(
        pokemon: PokemonDetailsEntity(
            pokemonTypes: ['grass', 'water', 'fire'],
            pokemonId: 3,
            pokemonName: 'khgjhgjhg',
            pokemonImageUrl:
                'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/3.png',
            pokemonHeight: 30,
            pokemonWeight: 90,
            hp: 40,
            attack: 60,
            defense: 50,
            specialAttack: 65,
            specialDefense: 150,
            speed: 80),
      ),
    );
  }
}
