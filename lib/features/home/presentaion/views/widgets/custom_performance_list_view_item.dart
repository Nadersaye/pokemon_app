import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:pokemon_app/core/utils/app_colors.dart';
import 'package:pokemon_app/core/utils/app_styles.dart';
import 'package:pokemon_app/features/home/domain/entities/performance_details_entity.dart';

class CustomPerformanceListViewItem extends StatelessWidget {
  final PerformanceDetailsEntity performanceItem;
  const CustomPerformanceListViewItem(
      {super.key, required this.performanceItem});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 30,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              performanceItem.title.toUpperCase(),
              style: AppStyles.style20(context).copyWith(
                  color: AppColors.performanceTextColor,
                  fontFamily: 'sans-serif-condensed'),
            ),
          ),
        ),
        const Gap(15),
        Expanded(
          child: LinearPercentIndicator(
            barRadius: const Radius.circular(20),
            //linearGradientBackgroundColor: ,
            backgroundColor: AppColors.linearIndicatorBackgroundColor,
            //width: ,
            animation: false,
            lineHeight: 20.0,
            percent: performanceItem.value / 300,
            progressColor: performanceItem.color,
          ),
        ),
      ],
    );
  }
}
