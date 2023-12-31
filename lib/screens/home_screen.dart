// ignore_for_file: public_member_api_docs, sort_constructors_firs

import 'package:coffee_flutter/models/cart_model.dart';
import 'package:coffee_flutter/widgets/custom_rating_star.dart';
import 'package:flutter/material.dart';
import 'package:coffee_flutter/gen/fonts.gen.dart';
import 'package:coffee_flutter/models/category_model.dart';
import 'package:coffee_flutter/models/product_model.dart';
import 'package:coffee_flutter/models/user_model.dart';
import 'package:coffee_flutter/resources/app_color.dart';
import 'package:coffee_flutter/screens/detail_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int current = 0;
  List<ProductModel> listPrdOfcate = [];

  void addToCart(ProductModel productModel) {
    Provider.of<CartModel>(context, listen: false).addItemToCart(productModel);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.h201520,
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 89.0),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0)
                .copyWith(top: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    // style: DefaultTextStyle.of(context).style,
                    children: [
                      TextSpan(
                        text: 'déjà\n',
                        style: TextStyle(
                          fontSize: 36.0,
                          fontWeight: FontWeight.w400,
                          fontFamily: FontFamily.rosarivo,
                          color: AppColor.hEFE3C8.withOpacity(0.5),
                        ),
                      ),
                      const TextSpan(
                        text: 'Brew',
                        style: TextStyle(
                            fontSize: 47.999996185302734,
                            fontWeight: FontWeight.w400,
                            fontFamily: FontFamily.rosarivo,
                            color: AppColor.hEFE3C8,
                            height: 0.8),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: AppColor.hDCAA70),
                      shape: BoxShape.circle),
                  child: CircleAvatar(
                    radius: 22.0,
                    backgroundImage: Image.network(
                      userModel.avt ?? '',
                      fit: BoxFit.fill,
                    ).image,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 35.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26.0),
            child: TextFormField(
              style: const TextStyle(
                color: AppColor.hEFE3C8,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: FontFamily.rosarivo,
              ),
              decoration: InputDecoration(
                focusColor: AppColor.hEFE3C8,
                hintText: 'Browse your favourite coffee...',
                hintStyle: TextStyle(
                  color: AppColor.hEFE3C8.withOpacity(0.5),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: FontFamily.rosarivo,
                ),
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                prefixIcon: Icon(
                  Icons.search,
                  color: AppColor.hEFE3C8.withOpacity(0.5),
                ),
                filled: true,
                fillColor: AppColor.h171017.withOpacity(0.5),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 35),
                  width: 38.0,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColor.h704341.withOpacity(0.3),
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(
                        40.0,
                      ),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ...List.generate(
                          listCate.length,
                          (index) => RotatedBox(
                            quarterTurns: -1,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 40.0 - 8.0,
                              ),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    current = index;
                                    listPrdOfcate = listProduct
                                        .where((element) =>
                                            element.categoryModel?.id ==
                                            listCate[index].id)
                                        .toList();
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    listCate[index].categoryName ?? 'error',
                                    style: TextStyle(
                                      color: current == index
                                          ? AppColor.hEFE3C8
                                          : AppColor.hEFE3C8.withOpacity(0.5),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: FontFamily.rosarivo,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: GridView.builder(
                    itemCount: listPrdOfcate.length,
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: 230.0,
                            mainAxisSpacing: 16.0,
                            crossAxisSpacing: 16.0,
                            crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailScreen(
                                  productModel: listPrdOfcate[index],
                                ),
                              ));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                            color: AppColor.hFFFFFF.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12.6),
                          ),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  SizedBox(
                                    width: double.infinity,
                                    height: 106.0,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15.0),
                                      child: Image.network(
                                        listPrdOfcate[index].image ?? '',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 41.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(
                                      color: AppColor.h3a302f.withOpacity(0.8),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15),
                                      ),
                                    ),
                                    child: CustomRatingStar(
                                        text:
                                            '${listPrdOfcate[index].ratingStar}'),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8.0),
                              Text(
                                listPrdOfcate[index].name ?? '',
                                style: const TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: FontFamily.rosarivo,
                                  color: AppColor.hFFFFFF,
                                ),
                              ),
                              const SizedBox(height: 13.0),
                              Container(
                                padding: const EdgeInsets.only(left: 18.0),
                                width: double.infinity,
                                height: 39,
                                decoration: BoxDecoration(
                                  color: AppColor.hFFFFFF.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '₹${listPrdOfcate[index].price}',
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: AppColor.hFFFFFF,
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        addToCart(listPrdOfcate[index]);
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              title:
                                                  Text('Đã thêm vào giỏ hàng!'),
                                              actions: [
                                                TextButton(
                                                    onPressed: () =>
                                                        Navigator.of(context)
                                                            .pop(),
                                                    child: Text('Ok'))
                                              ],
                                            );
                                          },
                                        );
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: 39.0,
                                        height: 39.0,
                                        decoration: BoxDecoration(
                                          color: AppColor.hEFE3C8,
                                          borderRadius:
                                              BorderRadius.circular(12),
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
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
