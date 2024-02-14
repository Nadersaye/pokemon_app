import 'package:flutter/material.dart';
import 'custom_pokemon_types_shimmer_list_item.dart';

class CustomPokemonTypesShimmerListView extends StatelessWidget {
  const CustomPokemonTypesShimmerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
            3, (index) => const CustomPokemonTypesShimmerListItem()),
      ),
    );
  }
}
