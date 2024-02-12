import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pokemon_app/core/utils/app_colors.dart';
import 'package:pokemon_app/core/utils/app_strings.dart';
import 'package:pokemon_app/features/home/domain/entities/performance_details_entity.dart';
import 'package:pokemon_app/features/home/domain/entities/pokemon_details_entity.dart';

import 'custom_performance_list_view_item.dart';

class CustomPerformanceListView extends StatefulWidget {
  final PokemonDetailsEntity pokemon;
  const CustomPerformanceListView({
    super.key,
    required this.pokemon,
  });

  @override
  State<CustomPerformanceListView> createState() =>
      _CustomPerformanceListViewState();
}

class _CustomPerformanceListViewState extends State<CustomPerformanceListView> {
  List<PerformanceDetailsEntity> performanceDetails = [];

  @override
  void initState() {
    performanceDetails = [
      PerformanceDetailsEntity(
          title: AppStrings.hp,
          value: widget.pokemon.hp,
          color: AppColors.hpColor),
      PerformanceDetailsEntity(
          title: AppStrings.attack,
          value: widget.pokemon.attack,
          color: AppColors.attackColor),
      PerformanceDetailsEntity(
          title: AppStrings.defense,
          value: widget.pokemon.defense,
          color: AppColors.defenceColor),
      PerformanceDetailsEntity(
          title: AppStrings.specialAttack,
          value: widget.pokemon.specialAttack,
          color: AppColors.specialAttackColor),
      PerformanceDetailsEntity(
          title: AppStrings.specialDefense,
          value: widget.pokemon.specialDefense,
          color: AppColors.specialDefenseColor),
      PerformanceDetailsEntity(
          title: AppStrings.speed,
          value: widget.pokemon.speed,
          color: AppColors.speedColor),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return CustomPerformanceListViewItem(
            performanceItem: performanceDetails[index],
          );
        },
        separatorBuilder: (context, index) => const Gap(25),
        itemCount: performanceDetails.length);
  }
}
