import 'package:flutter/material.dart';
import 'custom_pokemon_types_list_item.dart';

class CustomPokemonTypesListView extends StatelessWidget {
  final List<String> types;
  const CustomPokemonTypesListView({super.key, required this.types});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: types
            .map((e) => CustomPokemonTypesListItem(
                  type: e,
                ))
            .toList(),
      ),
    );
  }
}
