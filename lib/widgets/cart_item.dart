import 'package:coffee_flutter/gen/fonts.gen.dart';
import 'package:coffee_flutter/resources/app_color.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    Key? key,
    this.cate,
    this.name,
    this.image,
    this.price,
    this.quantity,
    this.onTapMinus,
    this.onTapPlus,
  }) : super(key: key);
  final String? cate;
  final String? name;
  final String? image;
  final String? price;
  final String? quantity;
  final Function()? onTapMinus;
  final Function()? onTapPlus;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      width: double.infinity,
      height: 96,
      decoration: BoxDecoration(
        color: AppColor.hFFFFFF.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 72,
            height: 72,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                image ?? '',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 12.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                cate ?? '',
                style: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    color: AppColor.hFFFFFF,
                    fontFamily: FontFamily.rosarivo),
              ),
              Text(
                name ?? '',
                style: const TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                    color: AppColor.hFFFFFF,
                    fontFamily: FontFamily.rosarivo),
              ),
              Text(
                price ?? '',
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: AppColor.hFFFFFF,
                ),
              )
            ],
          ),
          const Spacer(),
          InkWell(
            onTap: onTapMinus,
            child: Container(
              width: 87.0,
              height: 30.0,
              decoration: BoxDecoration(
                  color: AppColor.hFFFFFF.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(8.0)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 30.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                      color: AppColor.hEFE3C8,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      '-',
                      style: TextStyle(
                          fontSize: 16,
                          color: AppColor.h1C161E,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    quantity ?? '',
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        fontFamily: FontFamily.rosarivo,
                        color: AppColor.hFFFFFF),
                  ),
                  InkWell(
                    onTap: onTapPlus,
                    child: Container(
                      alignment: Alignment.center,
                      width: 30.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                        color: AppColor.hEFE3C8,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Text(
                        '+',
                        style: TextStyle(
                            fontSize: 13,
                            color: AppColor.h1C161E,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
