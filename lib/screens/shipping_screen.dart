import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_ui_kit/screens/set_map_screen.dart';
import 'package:food_delivery_ui_kit/utils/app_assets.dart';
import 'package:food_delivery_ui_kit/utils/colors_const.dart';
import 'package:food_delivery_ui_kit/utils/text_style.dart';
import 'package:food_delivery_ui_kit/widgets/custom_text.dart';
import 'package:food_delivery_ui_kit/widgets/pop_button.dart';

class ShippingScreen extends StatelessWidget {
  const ShippingScreen({Key? key}) : super(key: key);

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
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
              "Shipping",
              style: AppText.infoText.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          _cardContainer(
              title: "Order Location",
              location: "8502 Preston Rd. Inglewood Maine 98380",
              isLocation: false),
          _cardContainer(
              title: "Deliver To",
              location: "4517 Washington Ave. Manchester, Kentucky 39495",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const SetMapScreen(),
                  ),
                );
              })
        ]),
      ),
    );
  }

  _cardContainer(
      {String? title,
      String? location,
      bool isLocation = true,
      Function()? onTap}) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20, top: 22, left: 15, right: 20),
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 17, left: 20, right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title!,
            style: AppText.smallText.copyWith(color: Colors.grey[400]),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 33,
                width: 33,
                decoration:
                    BoxDecoration(color: yellowColor, shape: BoxShape.circle),
                child: Center(
                  child: SvgPicture.asset(
                    AppAssets.svgLocation,
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 200,
                    child: Text(
                      location!,
                      style: AppText.mediumText
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  !isLocation
                      ? const SizedBox()
                      : InkWell(
                          onTap: onTap,
                          child: const GreenText(
                            text: "Set Location",
                            size: 14,
                          )),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
