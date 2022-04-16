import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_ui_kit/screens/shipping_screen.dart';
import 'package:food_delivery_ui_kit/utils/app_assets.dart';
import 'package:food_delivery_ui_kit/utils/text_style.dart';
import 'package:food_delivery_ui_kit/widgets/pop_button.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.smallPattern),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 26),
              child: PopButton(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: Text(
                "Payment",
                style: AppText.infoText.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            _cardContainer(
                icon: AppAssets.svgPaypalLogo,
                code: "2121 6435 86392 ****",
                isDisabled: false,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const ShippingScreen(),
                    ),
                  );
                }),
            _cardContainer(
              icon: AppAssets.svgVisaLogo,
              code: "2121 6435 86392 ****",
            ),
            _cardContainer(
              icon: AppAssets.svgPayoneerLogo,
              code: "2121 6435 86392 ****",
            )
          ],
        ),
      ),
    );
  }

  _cardContainer(
      {required String icon,
      required String code,
      bool isDisabled = true,
      Function()? onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding:
            const EdgeInsets.only(bottom: 28, top: 26, left: 15, right: 20),
        width: double.infinity,
        height: 90,
        margin: const EdgeInsets.only(bottom: 17, left: 20, right: 20),
        decoration: BoxDecoration(
          color: isDisabled ? Colors.grey.withOpacity(.05) : Colors.white,
          borderRadius: BorderRadius.circular(22),
          boxShadow: isDisabled
              ? []
              : [
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
            SvgPicture.asset(icon),
            Text(
              code,
              style: AppText.smallText.copyWith(
                  color: isDisabled ? Colors.grey[400] : Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
