import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_ui_kit/screens/payment_screen.dart';
import 'package:food_delivery_ui_kit/screens/shipping_screen.dart';
import 'package:food_delivery_ui_kit/utils/app_assets.dart';
import 'package:food_delivery_ui_kit/utils/colors_const.dart';
import 'package:food_delivery_ui_kit/utils/text_style.dart';
import 'package:food_delivery_ui_kit/widgets/custom_text.dart';
import 'package:food_delivery_ui_kit/widgets/pop_button.dart';

class ConfirmOrder extends StatelessWidget {
  const ConfirmOrder({Key? key}) : super(key: key);

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
                "Confirm Order",
                style: AppText.infoText.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            _cardContainer(
              title: "Deliver To",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const ShippingScreen()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 33,
                    width: 33,
                    decoration: BoxDecoration(
                        color: yellowColor, shape: BoxShape.circle),
                    child: Center(
                      child: SvgPicture.asset(
                        AppAssets.svgLocation,
                        height: 20,
                        width: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.7,
                    child: Text(
                      "451 Washington Ave, Manchester, Kentucky 39495",
                      style: AppText.regularText
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            _cardContainer(
              title: "Payment Method",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const PaymentScreen()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    AppAssets.svgPaypalLogo,
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  Text("2121 6352 8465 ****", style: AppText.regularText)
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 7,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 4,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: greenGradient),
                borderRadius: BorderRadius.circular(22),
                image: const DecorationImage(
                  image: AssetImage(AppAssets.fishPatern),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8, top: 16),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 29)
                          .copyWith(right: 22),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Sub-Total",
                                style: AppText.smallText
                                    .copyWith(color: Colors.white),
                              ),
                              Text(
                                "120 \$",
                                style: AppText.smallText
                                    .copyWith(color: Colors.white),
                              ),
                            ],
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Delivery Charge",
                                  style: AppText.smallText
                                      .copyWith(color: Colors.white),
                                ),
                                Text(
                                  "10 \$",
                                  style: AppText.smallText
                                      .copyWith(color: Colors.white),
                                ),
                              ]),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Discount",
                                style: AppText.smallText
                                    .copyWith(color: Colors.white),
                              ),
                              Text(
                                "20 \$",
                                style: AppText.smallText
                                    .copyWith(color: Colors.white),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Total",
                                style: AppText.mediumText.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "150 \$",
                                style: AppText.mediumText.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: MaterialButton(
                        height: MediaQuery.of(context).size.height / 14,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        color: Colors.white,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const PaymentScreen()));
                        },
                        child:
                            const GreenText(text: "Place My Order", size: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _cardContainer(
      {required String title, required Widget child, Function()? onTap}) {
    return Container(
      padding: const EdgeInsets.only(bottom: 24, top: 20, left: 15, right: 20),
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 10, left: 20, right: 20),
      height: 108,
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
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: AppText.smallText.copyWith(color: Colors.grey[400]),
              ),
              InkWell(
                  onTap: onTap, child: const GreenText(text: "Edit", size: 12))
            ],
          ),
          child
        ],
      ),
    );
  }
}
