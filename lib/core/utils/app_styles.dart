import 'package:flutter/material.dart';
import 'package:pokemon_app/core/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle style34(BuildContext context) => TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 34),
      color: Colors.black,
      //fontFamily: 'monospace',
      fontWeight: FontWeight.normal);
  static TextStyle style24(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 24),
        color: const Color(0xff616161),
        //fontFamily: "sans-serif-condensed-medium",
        fontWeight: FontWeight.bold,
      );
  static TextStyle style23(BuildContext context) => TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 23),
      color: const Color(0xff8c8c8c),
      //fontFamily: "sans-serif-condensed-medium",
      fontWeight: FontWeight.bold);
  static TextStyle style20(BuildContext context) => TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      color: Colors.black, //const Color(0xff8c8c8c), //atk
      //fontFamily: 'monospace', // 'sans-serif-condensed-medium',
      fontWeight: FontWeight.bold);
  static TextStyle style16(BuildContext context) => TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      color: const Color(0xff616161),
      //fontFamily: "serif-monospace",
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
