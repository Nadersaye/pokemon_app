import 'package:flutter/material.dart';
import '../../../../../core/utils/constants.dart';
import 'pokemon_main_details_shimmer_list_item.dart';

class PokemonMainDetailsShimmerListView extends StatelessWidget {
  const PokemonMainDetailsShimmerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: kpokemonApiLimit,
      itemBuilder: (context, index) {
        return const PokemonMainDetailsShimmerListItem();
      },
    );
  }
}
