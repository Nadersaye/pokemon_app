import 'package:flutter/material.dart';
import '../../../../../core/widgets/shimmer_skeleton.dart';

class CustomPokemonTypesShimmerListItem extends StatelessWidget {
  const CustomPokemonTypesShimmerListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      height: 35,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: const BorderRadius.horizontal(
          left: Radius.circular(15),
          right: Radius.circular(15),
        ),
      ),
      child: Center(child: customSkelton(width: 50, height: 20)),
    );
  }
}
