// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coffee_flutter/models/cart_model.dart';
import 'package:coffee_flutter/screens/cart_screen.dart';
import 'package:coffee_flutter/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:coffee_flutter/gen/fonts.gen.dart';
import 'package:coffee_flutter/models/product_model.dart';
import 'package:coffee_flutter/resources/app_color.dart';
import 'package:coffee_flutter/widgets/custom_rating_star.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({
    Key? key,
    required this.productModel,
  }) : super(key: key);
  final ProductModel productModel;
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  void addToCart(ProductModel productModel) {
    Provider.of<CartModel>(context, listen: false).addItemToCart(productModel);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.h201520,
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 16.0).copyWith(top: 16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 411.0000305175781,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40.0),
                        child: Image.network(
                          widget.productModel.image ?? '',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 24,
                      left: 10,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: AppColor.hEFE3C8.withOpacity(0.75),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.arrow_back,
                            color: AppColor.hFFFFFF,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.productModel.name ?? '',
                      style: const TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w400,
                          color: AppColor.hFFFFFF,
                          fontFamily: FontFamily.rosarivo),
                    ),
                    const Icon(
                      Icons.favorite_rounded,
                      color: AppColor.hC94C4C,
                      size: 27,
                    )
                  ],
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: [
                    Text(
                      widget.productModel.title ?? '',
                      style: const TextStyle(
                          fontSize: 16.000001907348633,
                          fontWeight: FontWeight.w400,
                          color: AppColor.hFFFFFF,
                          fontFamily: FontFamily.rosarivo),
                    ),
                    const SizedBox(width: 20.0),
                    CustomRatingStar(
                      text: '${widget.productModel.ratingStar}',
                      size: 12.0,
                    )
                  ],
                ),
                const SizedBox(height: 8.0),
                RichText(
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        style: const TextStyle(fontSize: 14.0, height: 1.5),
                        text: widget.productModel.description,
                      ),
                      const TextSpan(
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                          text: 'Read more')
                    ],
                  ),
                ),
                const SizedBox(height: 30.0),
                const Text(
                  'Choice of Milk',
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                      color: AppColor.hFFFFFF,
                      fontFamily: FontFamily.rosarivo),
                ),
                const SizedBox(height: 8.0),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...List.generate(
                        widget.productModel.option!.length,
                        (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              widget.productModel.curentOption = index;
                            });
                          },
                          child: CustomButton(
                            label: widget.productModel.option![index],
                            style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400,
                                color: widget.productModel.curentOption == index
                                    ? AppColor.h201520
                                    : AppColor.hEFE3C8,
                                fontFamily: FontFamily.rosarivo),
                            backgroundColor:
                                widget.productModel.curentOption == index
                                    ? AppColor.hEFE3C8
                                    : AppColor.h201520,
                            borderColor:
                                widget.productModel.curentOption == index
                                    ? Colors.transparent
                                    : AppColor.hEFE3C8,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 48.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Price',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            color: AppColor.hFFFFFF,
                          ),
                        ),
                        Text(
                          '₹${widget.productModel.price}',
                          style: const TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.w600,
                            color: AppColor.hFFFFFF,
                          ),
                        )
                      ],
                    ),
                    CustomButton(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            addToCart(widget.productModel);
                            return CartScreen();
                          },
                        ));
                      },
                      label: 'BUY NOW',
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: AppColor.h4A2B29,
                      ),
                      backgroundColor: AppColor.hEFE3C8,
                      paddingHorizontal: 83.49,
                      paddingVertical: 15.0,
                    )
                  ],
                ),
                const SizedBox(height: 40.0)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
