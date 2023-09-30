// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coffee_flutter/models/cart_model.dart';
import 'package:coffee_flutter/models/product_model.dart';
import 'package:coffee_flutter/widgets/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:coffee_flutter/gen/fonts.gen.dart';
import 'package:coffee_flutter/resources/app_color.dart';
import 'package:coffee_flutter/widgets/custom_button.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  void removeItem(ProductModel productModel) {
    Provider.of<CartModel>(context, listen: false)
        .removeItemFromCart(productModel);
  }

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
                itemCount: listCart.length,
                itemBuilder: (context, index) {
                  List<ProductModel> reversedList =
                      List.from(listCart.reversed);
                  return Slidable(
                    // Specify a key if the Slidable is dismissible.
                    key: const ValueKey(0),

                    // // The start action pane is the one at the left or the top side.
                    // startActionPane: ActionPane(
                    //   // A motion is a widget used to control how the pane animates.
                    //   motion: const ScrollMotion(),

                    //   // A pane can dismiss the Slidable.
                    //   dismissible: DismissiblePane(onDismissed: () {}),

                    //   // All actions are defined in the children parameter.
                    //   children:  [
                    //     // A SlidableAction can have an icon and/or a label.
                    //     SlidableAction(
                    //       onPressed: (context) {

                    //       },
                    //       backgroundColor: Color(0xFFFE4A49),
                    //       foregroundColor: Colors.white,
                    //       icon: Icons.delete,
                    //       label: 'Delete',
                    //     ),
                    //     SlidableAction(
                    //       onPressed: (context) {

                    //       },
                    //       backgroundColor: Color(0xFF21B7CA),
                    //       foregroundColor: Colors.white,
                    //       icon: Icons.share,
                    //       label: 'Share',
                    //     ),
                    //   ],
                    // ),

                    // The end action pane is the one at the right or the bottom side.
                    endActionPane: ActionPane(
                      extentRatio:0.2,

                      motion: const ScrollMotion(),
                      children: [
                        const SizedBox(width: 16.0),
                        GestureDetector(
                          onTap:() {
                            removeItem(listCart[index]);
                            setState(() {
                              
                            });
                          },
                          child: Container(
                            width: 55.0,
                            height: 96.0,
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.all(Radius.circular(15.0),),
                            ),
                            child: const Icon(Icons.delete_outline_rounded,color: Colors.white,),
                          ),
                        ),
                       
                      ],
                    ),

                    child: CartItem(
                      cate: 'Cappuccino',
                      image: listCart[index].image ?? '',
                      name: listCart[index].name ?? '',
                      price: '₹${listCart[index].price}',
                      quantity: '1',
                    ),
                  );
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 16.0),
              ),
            ),
            Divider(
              color: AppColor.hFFFFFF.withOpacity(
                0.2,
              ),
              height: 40.0,
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20.0),
              padding: const EdgeInsets.symmetric(
                vertical: 10.0,
              ),
              height: 40,
              width: double.infinity,
              decoration:
                  BoxDecoration(color: AppColor.h704341.withOpacity(0.2)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 10,
                    height: 20.0,
                    decoration: const BoxDecoration(
                      color: AppColor.h201520,
                      borderRadius: BorderRadius.horizontal(
                        right: Radius.elliptical(30, 30),
                      ),
                    ),
                  ),
                  const Text(
                    'Apply Coupon Code',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                      color: AppColor.hEFE3C8,
                      fontFamily: FontFamily.rosarivo,
                    ),
                  ),
                  const Icon(
                    Icons.navigate_next_rounded,
                    size: 20,
                    color: AppColor.hEFE3C8,
                  ),
                  Container(
                    width: 10,
                    height: 20.0,
                    decoration: const BoxDecoration(
                      color: AppColor.h201520,
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.elliptical(30, 30),
                      ),
                    ),
                  ),
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
