import 'package:flutter/material.dart';
import 'package:food_delivery_ui_kit/utils/data.dart';
import 'package:food_delivery_ui_kit/screens/notification_screen.dart';
import 'package:food_delivery_ui_kit/screens/order_details_screen.dart';
import 'package:food_delivery_ui_kit/utils/app_assets.dart';
import 'package:food_delivery_ui_kit/utils/colors_const.dart';
import 'package:food_delivery_ui_kit/utils/text_style.dart';
import 'package:food_delivery_ui_kit/widgets/custom_search.dart';
import 'package:food_delivery_ui_kit/widgets/custom_text.dart';
import 'package:food_delivery_ui_kit/widgets/filter_widget.dart';
import 'package:food_delivery_ui_kit/widgets/green_button.dart';

class UserOrder extends StatelessWidget {
  const UserOrder({Key? key}) : super(key: key);

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 26).copyWith(top: 40),
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
            height: 30,
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemCount: popularMenu.length,
              itemBuilder: (context, i) => _cardContainer(
                  image: popularMenu[i].image,
                  foodName: popularMenu[i].foodName,
                  foodPlace: popularMenu[i].foodPlace,
                  price: popularMenu[i].price,
                  isDisabled: popularMenu[i].isDisabled),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: GreenButton(
              title: "Check Out",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => OrderDetailsScreen()));
              },
              isLong: true,
            ),
          ),
          const SizedBox(
            height: 160,
          ),
        ],
      ),
    );
  }

  _cardContainer({
    required String image,
    required String foodName,
    required foodPlace,
    required String price,
    bool isDisabled = true,
  }) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(10).copyWith(right: 20),
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 14),
        height: 87,
        decoration: isDisabled
            ? BoxDecoration(
                color: yellowColor.withOpacity(.06),
                borderRadius: BorderRadius.circular(15),
              )
            : BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(12, 26),
                    blurRadius: 50,
                    color: Colors.blueGrey[100]!.withOpacity(.4),
                    spreadRadius: 0,
                  )
                ],
              ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    image,
                    height: 64,
                    width: 64,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      foodName,
                      style: AppText.regularText
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      foodPlace,
                      style:
                          AppText.smallText.copyWith(color: Colors.grey[400]),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    isDisabled
                        ? Text(
                            "\$$price",
                            style: AppText.largeText.copyWith(
                                color: Colors.grey[300],
                                fontWeight: FontWeight.bold),
                          )
                        : GreenText(text: "\$$price", size: 20)
                  ],
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: isDisabled
                  ? BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    )
                  : BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                      gradient: LinearGradient(
                        colors: greenGradient,
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
              child: Text(
                "Proccess",
                style: AppText.smallText.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
