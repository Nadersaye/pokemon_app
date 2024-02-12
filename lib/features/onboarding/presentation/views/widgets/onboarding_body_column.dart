import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pokemon_app/core/utils/app_router.dart';
import 'package:pokemon_app/core/utils/app_strings.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/widgets/custom_material_button.dart';

class OnBoardingBodyColumn extends StatelessWidget {
  const OnBoardingBodyColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(MediaQuery.sizeOf(context).height * .225),
        Text(
          AppStrings.welcomeViewTitle,
          style: AppStyles.style20(context),
        ),
        const Gap(20),
        CustomMaterielButton(
          width: MediaQuery.sizeOf(context).width * .65,
          text: AppStrings.welcomeViewButtonText,
          onPressed: () {
            AppRouter.router.push(AppRouter.home);
            /*AppRouter.router.push(AppRouter.pokemonDetails,
                extra: PokemonDetailsEntity(
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
                    speed: 80));*/
          },
        )
      ],
    );
  }
}
