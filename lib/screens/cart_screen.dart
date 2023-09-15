// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coffee_flutter/widgets/cart_item.dart';
import 'package:flutter/material.dart';

import 'package:coffee_flutter/gen/fonts.gen.dart';
import 'package:coffee_flutter/models/cart_model.dart';
import 'package:coffee_flutter/resources/app_color.dart';
import 'package:coffee_flutter/widgets/custom_button.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.h201520,
      appBar: AppBar(
        backgroundColor: AppColor.h201520,
        centerTitle: true,
        title: const Text(
          'Cart',
          style: TextStyle(
            color: AppColor.hFFFFFF,
            fontSize: 24,
            fontWeight: FontWeight.w400,
            fontFamily: FontFamily.rosarivo,
          ),
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: 16.0).copyWith(bottom: 36.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return const CartItem(
                      cate: 'Cappuccino',
                      image:
                          'https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/AN_images/ways-to-make-coffee-super-healthy-1296x728-feature.jpg?w=1155&h=1528',
                      name: 'Drizzled with Caramel',
                      price: '₹249',
                      quantity: '3',
                    );
                  },
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 16.0),
                  itemCount: 10),
            ),
            Divider(
              color: AppColor.hFFFFFF.withOpacity(
                0.2,
              ),
              height: 40.0,
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20.0),
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
              height: 40,
              width: double.infinity,
              decoration: const BoxDecoration(color: AppColor.h704341),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Apply Coupon Code',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                      color: AppColor.hEFE3C8,
                      fontFamily: FontFamily.rosarivo,
                    ),
                  ),
                  Icon(
                    Icons.navigate_next_rounded,
                    size: 20,
                    color: AppColor.hEFE3C8,
                  )
                ],
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery Charges',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    color: AppColor.hFFFFFF,
                    fontFamily: FontFamily.rosarivo,
                  ),
                ),
                Text(
                  '₹49',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                    color: AppColor.hFFFFFF,
                  ),
                )
              ],
            ),
            const SizedBox(height: 8.0),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Taxes',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    color: AppColor.hFFFFFF,
                    fontFamily: FontFamily.rosarivo,
                  ),
                ),
                Text(
                  '₹49',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                    color: AppColor.hFFFFFF,
                  ),
                )
              ],
            ),
            Divider(
              color: AppColor.hFFFFFF.withOpacity(
                0.2,
              ),
              height: 40.0,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery Charges',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w400,
                    color: AppColor.hFFFFFF,
                    fontFamily: FontFamily.rosarivo,
                  ),
                ),
                Text(
                  '₹49',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    color: AppColor.hFFFFFF,
                  ),
                )
              ],
            ),
            const SizedBox(height: 28.0),
            const SizedBox(
              width: double.infinity,
              child: CustomButton(
                paddingHorizontal: 15.0,
                backgroundColor: AppColor.hEFE3C8,
                label: 'PAY NOW',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
