import 'package:flutter/material.dart';
import 'package:pokemon_app/core/functions/cached_my_network_image.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../domain/entities/pokemon_details_entity.dart';
import 'pokemon_details_body_data.dart';

class PokemonDetailsViewBody extends StatelessWidget {
  final PokemonDetailsEntity pokemon;
  const PokemonDetailsViewBody({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(
            left: 10, right: 10, top: MediaQuery.sizeOf(context).height * .25),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.imageBackgroundHome),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            PokemonDetailsBodyData(
              pokemon: pokemon,
            ),
            Positioned(
                left: 0,
                right: 0,
                top: -180,
                child: Center(
                  child: cachedMyNetworkImage(
                    imageUrl: pokemon.pokemonImageUrl,
                    width: 200,
                    height: 250,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
