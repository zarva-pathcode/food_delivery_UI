import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_ui_kit/screens/upload_photo_screen.dart';
import 'package:food_delivery_ui_kit/utils/app_assets.dart';
import 'package:food_delivery_ui_kit/utils/text_style.dart';
import 'package:food_delivery_ui_kit/widgets/green_button.dart';
import 'package:food_delivery_ui_kit/widgets/pop_button.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage(AppAssets.smallPattern),
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const PopButton(),
              Text(
                "Payment Method",
                style: AppText.largeText.copyWith(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: Text(
                    "This data will be displayed in your account profile for security",
                    style: AppText.smallText.copyWith(color: Colors.black),
                  )),
              const SizedBox(
                height: 20,
              ),
              _paymentCard(AppAssets.svgPaypalLogo),
              _paymentCard(AppAssets.svgPayoneerLogo),
              _paymentCard(AppAssets.svgVisaLogo),
              const Spacer(),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: GreenButton(
                    title: "Next",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const UploadPhotoScreen(),
                        ),
                      );
                    },
                  )),
              const SizedBox(
                height: 45,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _paymentCard(String logo) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 14),
      height: 73,
      width: double.infinity,
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
          ]),
      child: SvgPicture.asset(
        logo,
        height: 20,
        width: 20,
      ),
    );
  }
}
