import 'package:flutter/material.dart';
import 'package:food_delivery_ui_kit/utils/app_assets.dart';
import 'package:food_delivery_ui_kit/utils/colors_const.dart';
import 'package:food_delivery_ui_kit/utils/text_style.dart';
import 'package:food_delivery_ui_kit/widgets/custom_search.dart';
import 'package:food_delivery_ui_kit/widgets/green_button.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24)
            .copyWith(bottom: 30),
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage(AppAssets.smallPattern),
          ),
        ),
        child: ListView(
          children: [
            Row(
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
                Container(
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
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomSearch(),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Type",
              style: AppText.mediumText.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                _filterOptions("Restaurant"),
                const SizedBox(
                  width: 20,
                ),
                _filterOptions("Menu"),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Location",
              style: AppText.mediumText.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                _filterOptions("1 Km"),
                const SizedBox(
                  width: 10,
                ),
                _filterOptions(">10 Km"),
                const SizedBox(
                  width: 10,
                ),
                _filterOptions("<10 Km"),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Food",
              style: AppText.mediumText.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                _filterOptions("Cake"),
                const SizedBox(
                  width: 10,
                ),
                _filterOptions("Soup"),
                const SizedBox(
                  width: 10,
                ),
                _filterOptions("Main Course"),
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            Row(
              children: [
                _filterOptions("Appetizer"),
                const SizedBox(
                  width: 20,
                ),
                _filterOptions("Dessert"),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            GreenButton(
              title: "Search",
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }

  _filterOptions(String label) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
            color: orangeColor.withOpacity(.1),
            borderRadius: BorderRadius.circular(15)),
        child: Text(
          label,
          style: AppText.regularText
              .copyWith(color: orangeTextColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
