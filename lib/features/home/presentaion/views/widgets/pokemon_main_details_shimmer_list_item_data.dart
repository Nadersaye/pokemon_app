import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../../core/widgets/shimmer_skeleton.dart';
import 'custom_pokemon_types_shimmer_list_view.dart';

class PokemonMainDetailsShimmerListItemData extends StatelessWidget {
  const PokemonMainDetailsShimmerListItemData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        customSkelton(width: 100, height: 20),
        const Gap(10),
        customSkelton(width: 50, height: 20),
        const Gap(10),
        const CustomPokemonTypesShimmerListView(),
      ],
    );
  }
}
