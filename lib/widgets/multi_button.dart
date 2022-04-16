import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_ui_kit/utils/app_assets.dart';
import 'package:food_delivery_ui_kit/utils/text_style.dart';

class MultiButton extends StatelessWidget {
  final String title;
  final String icon;
  final Function() onPressed;
  const MultiButton(
      {Key? key,
      required this.title,
      required this.icon,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        height: 57,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey[100]!),
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
            boxShadow: [
              BoxShadow(
                offset: const Offset(12, 26),
                blurRadius: 50,
                color: Colors.blueGrey[100]!.withOpacity(.4),
                spreadRadius: 0,
              )
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(icon),
            const SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: AppText.regularText.copyWith(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
