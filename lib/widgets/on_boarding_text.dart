import 'package:flutter/material.dart';
import 'package:food_delivery_ui_kit/utils/text_style.dart';

class OnBoardingText extends StatelessWidget {
  final String? text;
  final bool? isSub;
  const OnBoardingText({
    Key? key,
    this.text,
    this.isSub = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: isSub! ? 50 : 85,
      width: MediaQuery.of(context).size.width / 1.42,
      child: Text(
        text!,
        style: isSub!
            ? AppText.smallText
            : AppText.onBoardText.copyWith(
                fontWeight: FontWeight.bold,
              ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
