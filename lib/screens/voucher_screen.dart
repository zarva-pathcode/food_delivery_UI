import 'package:flutter/material.dart';
import 'package:food_delivery_ui_kit/utils/app_assets.dart';
import 'package:food_delivery_ui_kit/utils/colors_const.dart';
import 'package:food_delivery_ui_kit/utils/text_style.dart';
import 'package:food_delivery_ui_kit/widgets/green_button.dart';
import 'package:food_delivery_ui_kit/widgets/pop_button.dart';

class VoucherScreen extends StatelessWidget {
  const VoucherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage(AppAssets.smallPattern),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: PopButton(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: Text(
                "Voucher Promo",
                style: AppText.infoText.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Container(
              height: 122,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 24),
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: greenGradient),
                  borderRadius: BorderRadius.circular(15)),
              child: Stack(
                children: [
                  Image.asset(
                    AppAssets.bgVoucher,
                    height: 120,
                  ),
                  Positioned(
                    left: 20,
                    child: Image.asset(
                      AppAssets.bgDouble,
                      height: 125,
                    ),
                  ),
                  Positioned(
                    top: 16,
                    right: 20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3,
                          child: Text(
                            "Special Deal For October",
                            style: AppText.mediumText.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 32,
                          width: 82,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                6,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(12, 6),
                                  blurRadius: 12,
                                  color: Colors.grey.withOpacity(.4),
                                  spreadRadius: 0,
                                )
                              ]),
                          child: Center(
                            child: Text(
                              "Order Now",
                              style: AppText.smallText.copyWith(
                                color: primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 11,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 122,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 24),
              decoration: BoxDecoration(
                color: accentYellow,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Stack(
                children: [
                  Image.asset(
                    AppAssets.bgVoucher2,
                    height: 120,
                  ),
                  Image.asset(
                    AppAssets.bgDouble2,
                  ),
                  Positioned(
                    top: 16,
                    right: 20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3,
                          child: Text(
                            "Special Deal For October",
                            style: AppText.mediumText.copyWith(
                              fontWeight: FontWeight.bold,
                              color: brownColor,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 32,
                          width: 82,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                6,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(12, 6),
                                  blurRadius: 12,
                                  color: Colors.grey.withOpacity(.2),
                                  spreadRadius: 0,
                                )
                              ]),
                          child: Center(
                            child: Text(
                              "Order Now",
                              style: AppText.smallText.copyWith(
                                color: brownColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 11,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: GreenButton(
                title: "Check out",
                isLong: true,
                onTap: () {},
              ),
            ),
            const SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
