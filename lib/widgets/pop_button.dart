import 'package:flutter/material.dart';
import 'package:food_delivery_ui_kit/utils/colors_const.dart';

class PopButton extends StatefulWidget {
  final bool isWhite;
  const PopButton({
    Key? key,
    this.isWhite = false,
  }) : super(key: key);

  @override
  _PopButtonState createState() => _PopButtonState();
}

class _PopButtonState extends State<PopButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 25),
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          color: widget.isWhite ? Colors.white : orangeColor.withOpacity(.12),
          borderRadius: BorderRadius.circular(15),
          boxShadow: widget.isWhite
              ? [
                  BoxShadow(
                    offset: const Offset(12, 26),
                    blurRadius: 50,
                    color: Colors.blueGrey.withOpacity(.4),
                    spreadRadius: 0,
                  )
                ]
              : [],
        ),
        child: Icon(
          Icons.arrow_back_ios_new,
          color: orangeTextColor,
        ),
      ),
    );
  }
}
