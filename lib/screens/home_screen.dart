import 'package:flutter/material.dart';
import 'package:food_delivery_ui_kit/screens/detail_product.dart';
import 'package:food_delivery_ui_kit/screens/detail_resto.dart';
import 'package:food_delivery_ui_kit/screens/notification_screen.dart';
import 'package:food_delivery_ui_kit/screens/popular_menu.dart';
import 'package:food_delivery_ui_kit/screens/popular_resto_screen.dart';
import 'package:food_delivery_ui_kit/utils/app_assets.dart';
import 'package:food_delivery_ui_kit/utils/colors_const.dart';
import 'package:food_delivery_ui_kit/utils/text_style.dart';
import 'package:food_delivery_ui_kit/widgets/card_container.dart';
import 'package:food_delivery_ui_kit/widgets/custom_search.dart';
import 'package:food_delivery_ui_kit/widgets/custom_text.dart';
import 'package:food_delivery_ui_kit/widgets/filter_widget.dart';
import 'package:food_delivery_ui_kit/widgets/row_card_container.dart';
import 'package:food_delivery_ui_kit/widgets/title_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int viewMore = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage(AppAssets.smallPattern),
        ),
      ),
      child: ListView(
        // shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.8,
                  child: Text(
                    "Find Your Favorite Food",
                    style: AppText.largeText.copyWith(
                        color: Colors.black,
                        fontSize: 31,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const NotificationScreen(),
                      ),
                    );
                  },
                  child: Container(
                    height: 45,
                    width: 45,
                    child: Icon(
                      Icons.notifications_none_outlined,
                      color: primaryColor,
                      size: 25,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(12, 26),
                          blurRadius: 50,
                          color: Colors.blueGrey[200]!.withOpacity(.6),
                          spreadRadius: 2,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Flexible(flex: 4, child: CustomSearch()),
                Flexible(flex: 1, child: FilterWidget()),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          viewMore == 1
              ? PopularRestoScreen()
              : viewMore == 2
                  ? const PopularMenuScreen()
                  : Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 26),
                      child: Column(
                        children: [
                          Container(
                            height: 150,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(colors: greenGradient),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Stack(
                              children: [
                                Image.asset(AppAssets.fishPatern),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      AppAssets.iceCream,
                                      height: 150,
                                      width: 150,
                                      fit: BoxFit.cover,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 150,
                                          child: Text(
                                            "Special Deal For October",
                                            style: AppText.largeText.copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 12,
                                        ),
                                        Container(
                                          height: 40,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 18, vertical: 10),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                offset: const Offset(12, 16),
                                                blurRadius: 20,
                                                color:
                                                    Colors.grey.withOpacity(.3),
                                                spreadRadius: 1,
                                              )
                                            ],
                                          ),
                                          child: const GreenText(
                                            text: "Buy Now",
                                            size: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          TitleSection(
                              label: "Popular Restaurant",
                              onTap: () {
                                setState(() {
                                  viewMore = 1;
                                });
                              }),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CardContainer(
                                image: AppAssets.cardIcon5,
                                text: "Vegan Resto",
                                time: "12 Mins",
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => const DetailResto(),
                                    ),
                                  );
                                },
                              ),
                              CardContainer(
                                  image: AppAssets.cardIcon6,
                                  text: "Healthy Food",
                                  time: "8 Mins",
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => const DetailResto(),
                                      ),
                                    );
                                  }),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TitleSection(
                            label: "Popular Menu",
                            onTap: () {
                              setState(
                                () {
                                  viewMore = 2;
                                },
                              );
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          RowCardContainer(
                            foodName: 'Fruit Salad',
                            placeName: 'Wijie Resto',
                            image: AppAssets.fruitSalad,
                            price: '5',
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const DetailProduct(),
                                ),
                              );
                            },
                          ),
                          const RowCardContainer(
                            foodName: 'Green Noddle',
                            placeName: 'Wijie Resto',
                            image: AppAssets.greenNoddle,
                            price: '7',
                          ),
                          const SizedBox(
                            height: 100,
                          )
                        ],
                      ),
                    )
        ],
      ),
    );
  }
}
