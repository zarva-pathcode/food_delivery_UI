import 'package:flutter/material.dart';
import 'package:food_delivery_ui_kit/widgets/on_boarding_text.dart';

class SplashContent extends StatelessWidget {
  SplashContent({
    Key? key,
    this.text,
    this.subText,
    this.image,
  }) : super(key: key);
  final String? text, subText, image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image.asset(
            image!,
            height: 420,
            width: double.infinity,
          ),
          OnBoardingText(text: text!),
          OnBoardingText(
            text: subText!,
            isSub: true,
          ),
        ],
      ),
    );
  }
}
