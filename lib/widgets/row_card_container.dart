import 'package:flutter/material.dart';
import 'package:food_delivery_ui_kit/utils/colors_const.dart';
import 'package:food_delivery_ui_kit/utils/text_style.dart';

class RowCardContainer extends StatelessWidget {
  final String image;
  final String foodName;
  final String placeName;
  final String price;
  final Function()? onTap;
  const RowCardContainer(
      {Key? key,
      required this.image,
      required this.foodName,
      required this.placeName,
      required this.price,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10).copyWith(right: 20),
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 10),
        height: 87,
        decoration: BoxDecoration(
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
                      placeName,
                      style: AppText.smallText.copyWith(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              "\$$price",
              style: AppText.largeText.copyWith(
                  color: costColor, fontWeight: FontWeight.bold, fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
