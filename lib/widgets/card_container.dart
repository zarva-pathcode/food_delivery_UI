import 'package:flutter/material.dart';

import 'package:food_delivery_ui_kit/utils/text_style.dart';

class CardContainer extends StatelessWidget {
  final String image;
  final String text;
  final String time;
  final Function()? onTap;
  const CardContainer({
    Key? key,
    required this.image,
    required this.text,
    required this.time,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 10),
        height: MediaQuery.of(context).size.height / 4.4,
        width: MediaQuery.of(context).size.width / 2.5,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              offset: const Offset(12, 26),
              blurRadius: 50,
              color: Colors.blueGrey[100]!.withOpacity(.4),
              spreadRadius: 0,
            ),
          ],
        ),
        child: Column(
          children: [
            Image.asset(
              image,
              height: 80,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              text,
              style: AppText.mediumText.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              time,
              style: AppText.smallText.copyWith(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
