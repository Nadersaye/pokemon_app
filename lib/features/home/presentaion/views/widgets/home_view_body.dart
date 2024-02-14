import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pokemon_app/core/utils/app_strings.dart';
import 'package:pokemon_app/core/utils/app_styles.dart';
import 'package:pokemon_app/core/widgets/custom_material_button.dart';
import '../../../../../core/utils/app_images.dart';
import 'custom_pokemon_main_details_listview_consumer.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 5),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.imageBackgroundHome),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Text(AppStrings.homePokemonViewTitle,
              style: AppStyles.style20(context)),
          const Gap(10),
          CustomMaterielButton(
              onPressed: () {},
              width: MediaQuery.sizeOf(context).width * .4,
              text: AppStrings.homepokemonViewButtonText),
          const Gap(10),
          const Expanded(child: CustomPokemonMainDetailsListViewConsumer()),
        ],
      ),
    );
  }
}
