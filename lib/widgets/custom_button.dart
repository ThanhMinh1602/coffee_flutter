// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    this.backgroundColor,
    this.borderColor,
    this.label,
    this.paddingHorizontal = 20.0,
    this.paddingVertical = 8.0,
    this.style,
  }) : super(key: key);
  final Color? backgroundColor;
  final Color? borderColor;
  final String? label;
  final double paddingHorizontal;
  final double paddingVertical;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8.0),
      padding: EdgeInsets.symmetric(
          horizontal: paddingHorizontal, vertical: paddingVertical),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(10.0),
        ),
        border: Border.all(
          color: borderColor ?? Colors.transparent,
        ),
      ),
      child: Text(
        label ?? '',
        style: style,
      ),
    );
  }
}
