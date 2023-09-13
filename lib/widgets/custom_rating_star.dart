// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:coffee_flutter/gen/fonts.gen.dart';
import 'package:coffee_flutter/resources/app_color.dart';

class CustomRatingStar extends StatelessWidget {
  const CustomRatingStar({
    Key? key,
    required this.text,
    this.size = 10.0,
  }) : super(key: key);
  final String text;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.star_rounded,
          size: size,
          color: AppColor.hDCAA70.withOpacity(0.7),
        ),
        const SizedBox(width: 4.51),
        Text(
          text,
          style: TextStyle(
            fontSize: size,
            fontWeight: FontWeight.w400,
            fontFamily: FontFamily.rosarivo,
            color: AppColor.hFFFFFF,
          ),
        ),
      ],
    );
  }
}
