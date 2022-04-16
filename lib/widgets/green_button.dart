import 'package:flutter/material.dart';
import 'package:food_delivery_ui_kit/utils/colors_const.dart';
import 'package:food_delivery_ui_kit/utils/text_style.dart';

class GreenButton extends StatefulWidget {
  final String title;
  final Function()? onTap;
  final bool isLong;
  const GreenButton({
    Key? key,
    this.onTap,
    required this.title,
    this.isLong = false,
  }) : super(key: key);

  @override
  _GreenButtonState createState() => _GreenButtonState();
}

class _GreenButtonState extends State<GreenButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap!,
      child: Container(
        height: 57,
        width: widget.isLong ? double.infinity : 175,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
                colors: greenGradient,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: Center(
          child: Text(
            widget.title,
            maxLines: 1,
            style: AppText.largeText
                .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
