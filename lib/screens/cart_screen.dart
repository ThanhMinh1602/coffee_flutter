import 'package:coffee_flutter/gen/fonts.gen.dart';
import 'package:coffee_flutter/resources/app_color.dart';
import 'package:flutter/material.dart';

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
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
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
                                'https://media.post.rvohealth.io/wp-content/uploads/2020/08/coffee-worlds-biggest-source-of-antioxidants-1296x728-feature_0-800x728.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(width: 12.0),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Cappuccino',
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.hFFFFFF,
                                    fontFamily: FontFamily.rosarivo),
                              ),
                              Text(
                                'Bursting Blueberry',
                                style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.hFFFFFF,
                                    fontFamily: FontFamily.rosarivo),
                              ),
                              Text(
                                '₹249',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.hFFFFFF,
                                ),
                              )
                            ],
                          ),
                          const Spacer(),
                          Container(
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
                                const Text(
                                  '2',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: FontFamily.rosarivo,
                                      color: AppColor.hFFFFFF),
                                ),
                                Container(
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
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 16.0),
                  itemCount: 10),
            )
          ],
        ),
      ),
    );
  }
}
