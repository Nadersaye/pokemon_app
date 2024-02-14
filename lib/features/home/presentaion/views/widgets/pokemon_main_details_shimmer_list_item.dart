import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../../core/widgets/shimmer_skeleton.dart';
import 'pokemon_main_details_shimmer_list_item_data.dart';

class PokemonMainDetailsShimmerListItem extends StatelessWidget {
  const PokemonMainDetailsShimmerListItem({super.key});

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
        customSkelton(width: 80, height: 100),
        const Gap(10),
        const PokemonMainDetailsShimmerListItemData()
      ]),
    );
  }
}
