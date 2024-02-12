import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';

class CustomWeightValue extends StatelessWidget {
  final int value;
  final String text;
  const CustomWeightValue({
    super.key,
    required this.value,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text('${value.toDouble()} $text'.toUpperCase(),
        style: AppStyles.style24(context));
  }
}
