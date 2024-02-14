import 'package:flutter/material.dart';
import 'package:pokemon_app/core/utils/app_colors.dart';
import 'package:shimmer/shimmer.dart';

Shimmer customSkelton(
    {required double width,
    required double height,
    double? opacity,
    double? borderRaduis}) {
  return Shimmer.fromColors(
    baseColor: AppColors.greyColor.withOpacity(0.5),
    highlightColor: AppColors.whiteColor,
    child: Container(
      decoration: BoxDecoration(
        color: AppColors.greyColor.withOpacity(opacity ?? .5),
        borderRadius: BorderRadius.circular(borderRaduis ?? 18),
      ),
      width: width,
      height: height,
    ),
  );
}
