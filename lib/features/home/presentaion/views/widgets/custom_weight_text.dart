import 'package:flutter/material.dart';
import '../../../../../core/utils/app_styles.dart';

class CustomWeightText extends StatelessWidget {
  final String text;
  const CustomWeightText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: AppStyles.style16(context),
    );
  }
}
