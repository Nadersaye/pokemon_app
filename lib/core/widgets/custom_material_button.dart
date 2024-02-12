import 'package:flutter/material.dart';

class CustomMaterielButton extends StatelessWidget {
  final double width;
  final Function()? onPressed;
  final String text;
  const CustomMaterielButton({
    super.key,
    required this.width,
    this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
              left: Radius.circular(25), right: Radius.circular(25))),
      minWidth: width,
      color: Colors.red,
      onPressed: onPressed,
      child: Text(text.toUpperCase()),
    );
  }
}
