import 'package:coffee_flutter/resources/app_color.dart';
import 'package:coffee_flutter/screens/cart_screen.dart';
import 'package:coffee_flutter/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  List<IconData> listIcon = [
    FontAwesomeIcons.home,
    FontAwesomeIcons.shoppingCart,
    FontAwesomeIcons.heartCircleBolt,
    FontAwesomeIcons.solidBell
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: [
          const HomeScreen(),
          const CartScreen(),
          Container(
            color: AppColor.h4A2B29,
          ),
          Container(
            color: AppColor.hDCAA70,
          ),
        ],
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 78,
        decoration: const BoxDecoration(color: AppColor.h22141F),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 46.0 - 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...List.generate(
                listIcon.length,
                (index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(
                        listIcon[index],
                        size: 24,
                        color: AppColor.hEFE3C8
                            .withOpacity(currentIndex == index ? 1.0 : 0.4),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
