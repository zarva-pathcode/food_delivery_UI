import 'package:flutter/material.dart';
import 'package:food_delivery_ui_kit/models/popular_resto.dart';

import 'package:food_delivery_ui_kit/utils/app_assets.dart';
import 'package:food_delivery_ui_kit/utils/text_style.dart';
import 'package:food_delivery_ui_kit/widgets/card_container.dart';

class PopularRestoScreen extends StatelessWidget {
  PopularRestoScreen({Key? key}) : super(key: key);

  final List<PopularResto> _popularResto = [
    PopularResto(
        image: AppAssets.cardIcon5, label: "Vegan Resto", min: "12 Mins"),
    PopularResto(
        image: AppAssets.cardIcon6, label: "Healty Food", min: "7 Mins"),
    PopularResto(
        image: AppAssets.cardIcon3, label: "Chef Resto", min: "15 Mins"),
    PopularResto(
        image: AppAssets.cardIcon4, label: "Super Resto", min: "8 Mins"),
    PopularResto(
        image: AppAssets.cardIcon1, label: "Good Food", min: "10 Mins"),
    PopularResto(
        image: AppAssets.cardIcon2, label: "Smart Resto", min: "11 Mins"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 20)
              .copyWith(bottom: 10),
          child: Text(
            "Popular Restaurant",
            style: AppText.mediumText.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: GridView.builder(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 10)
                .copyWith(bottom: 100),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 3.5,
                crossAxisSpacing: 20,
                mainAxisSpacing: 30),
            itemCount: _popularResto.length,
            itemBuilder: (BuildContext ctx, index) {
              return CardContainer(
                  image: _popularResto[index].image,
                  text: _popularResto[index].label,
                  time: _popularResto[index].min);
            },
          ),
        ),
      ],
    );
  }
}
