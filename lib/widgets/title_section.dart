import 'package:flutter/material.dart';
import 'package:food_delivery_ui_kit/utils/colors_const.dart';
import 'package:food_delivery_ui_kit/utils/text_style.dart';

class TitleSection extends StatefulWidget {
  final String label;
  final Function()? onTap;
  const TitleSection({Key? key, required this.label, this.onTap})
      : super(key: key);

  @override
  State<TitleSection> createState() => _TitleSectionState();
}

class _TitleSectionState extends State<TitleSection> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.label,
          style: AppText.mediumText.copyWith(fontWeight: FontWeight.bold),
        ),
        GestureDetector(
          onTap: widget.onTap,
          child: Text(
            "View More",
            style: AppText.smallText
                .copyWith(fontWeight: FontWeight.w300, color: orangeColor),
          ),
        ),
      ],
    );
  }
}
