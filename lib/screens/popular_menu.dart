import 'package:flutter/material.dart';
import 'package:food_delivery_ui_kit/models/popular_menu.dart';
import 'package:food_delivery_ui_kit/screens/detail_product.dart';
import 'package:food_delivery_ui_kit/screens/detail_resto.dart';
import '../utils/data.dart';
import 'package:food_delivery_ui_kit/utils/text_style.dart';
import 'package:food_delivery_ui_kit/widgets/row_card_container.dart';

class PopularMenuScreen extends StatelessWidget {
  const PopularMenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 20)
              .copyWith(bottom: 10),
          child: Text(
            "Popular Menu",
            style: AppText.mediumText.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 30).copyWith(left: 20),
            child: Column(
              children: popularMenu
                  .map(
                    (PopularMenu data) => RowCardContainer(
                      image: data.image,
                      foodName: data.foodName,
                      placeName: data.foodPlace,
                      price: data.price,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => DetailProduct(),
                          ),
                        );
                      },
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
