import 'package:flutter/material.dart';
import 'widgets/pokemon_details_view_body.dart';

class PokemonDetailsView extends StatelessWidget {
  const PokemonDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: PokemonDetailsViewBody());
  }
}
