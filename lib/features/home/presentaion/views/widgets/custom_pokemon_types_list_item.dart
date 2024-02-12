import 'package:flutter/material.dart';
import '../../../../../core/utils/app_styles.dart';

class CustomPokemonTypesListItem extends StatelessWidget {
  final String type;
  const CustomPokemonTypesListItem({
    super.key,
    required this.type,
  });

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
      child: Center(child: Text(type, style: AppStyles.style16(context))),
    );
  }
}
