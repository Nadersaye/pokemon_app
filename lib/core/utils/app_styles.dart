import 'package:flutter/material.dart';
import 'package:pokemon_app/core/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle style32(BuildContext context) => TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 32),
      color: Theme.of(context).primaryColor,
      fontWeight: FontWeight.bold);
  static TextStyle style24(BuildContext context) => TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      color: Theme.of(context).primaryColor,
      fontWeight: FontWeight.bold);
  static TextStyle style20(BuildContext context) => TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      color: Theme.of(context).primaryColor,
      fontWeight: FontWeight.bold);
  static TextStyle style16(BuildContext context) => TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      color: Theme.of(context).primaryColor,
      fontWeight: FontWeight.bold);
}

// sacleFactor
// responsive font size
// (min , max) fontsize
double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tabletWidth) {
    return width / 550;
  } else if (width < SizeConfig.desktopWidth) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
