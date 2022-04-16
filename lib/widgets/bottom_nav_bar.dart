import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery_ui_kit/screens/account_screen.dart';
import 'package:food_delivery_ui_kit/screens/cart_screen.dart';
import 'package:food_delivery_ui_kit/screens/detail_product.dart';
import 'package:food_delivery_ui_kit/screens/order_details_screen.dart';
import 'package:food_delivery_ui_kit/screens/chat_screen.dart';
import 'package:food_delivery_ui_kit/screens/home_screen.dart';
import 'package:food_delivery_ui_kit/screens/user_order.dart';
import 'package:food_delivery_ui_kit/utils/app_assets.dart';
import 'package:food_delivery_ui_kit/utils/colors_const.dart';
import 'package:food_delivery_ui_kit/utils/text_style.dart';

class BotNavbar extends StatefulWidget {
  const BotNavbar({Key? key}) : super(key: key);

  @override
  _BotNavbarState createState() => _BotNavbarState();
}

class _BotNavbarState extends State<BotNavbar> {
  var currentIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const AccountScreen(),
    const UserOrder(),
    ChatScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: _pages[currentIndex],
      floatingActionButton: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        height: 74,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.1),
              blurRadius: 30,
              offset: const Offset(0, 10),
            ),
          ],
          borderRadius: BorderRadius.circular(15),
        ),
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 24),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(() {
                currentIndex = index;
                HapticFeedback.lightImpact();
              });
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Stack(
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 600),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index == currentIndex
                      ? displayWidth * .32
                      : displayWidth * .18,
                  alignment: Alignment.center,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 600),
                    curve: Curves.fastLinearToSlowEaseIn,
                    height: index == currentIndex ? displayWidth * .13 : 0,
                    width: index == currentIndex ? displayWidth * .32 : 0,
                    decoration: BoxDecoration(
                      color: index == currentIndex
                          ? accentColor.withOpacity(.1)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 600),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index == currentIndex
                      ? displayWidth * .31
                      : displayWidth * .18,
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 600),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width:
                                index == currentIndex ? displayWidth * .13 : 0,
                          ),
                          AnimatedOpacity(
                            opacity: index == currentIndex ? 1 : 0,
                            duration: const Duration(milliseconds: 600),
                            curve: Curves.fastLinearToSlowEaseIn,
                            child: Text(
                              index == currentIndex
                                  ? '${labelsIcon[index]}'
                                  : '',
                              style: AppText.smallText.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 600),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width:
                                index == currentIndex ? displayWidth * .03 : 20,
                          ),
                          Image.asset(
                            index == currentIndex
                                ? listOfSelectedIcons[index]
                                : listOfUnselectedIcons[index],
                            height: 22,
                            width: 22,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  List<String> listOfSelectedIcons = [
    AppAssets.selectedHome,
    AppAssets.selectedProfile,
    AppAssets.selectedCart,
    AppAssets.selectedChat
  ];

  List<String> listOfUnselectedIcons = [
    AppAssets.unselectedHome,
    AppAssets.unselectedProfile,
    AppAssets.unselectedCart,
    AppAssets.unselectedChat
  ];

  List<String> labelsIcon = [
    'Home',
    'Account',
    'Cart',
    'Chat',
  ];
}
