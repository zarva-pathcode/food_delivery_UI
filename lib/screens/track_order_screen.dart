import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery_ui_kit/utils/app_assets.dart';
import 'package:food_delivery_ui_kit/utils/colors_const.dart';
import 'package:food_delivery_ui_kit/utils/text_style.dart';
import 'package:food_delivery_ui_kit/widgets/custom_text.dart';
import 'package:food_delivery_ui_kit/widgets/green_button.dart';
import 'package:food_delivery_ui_kit/widgets/pop_button.dart';

class TrackOrderScreen extends StatelessWidget {
  const TrackOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(AppAssets.mapBg),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20)
                    .copyWith(top: 50),
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Icon(
                  Icons.arrow_back_ios_new,
                  color: orangeTextColor,
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 20,
        ).copyWith(bottom: 12),
        height: MediaQuery.of(context).size.height / 3.2,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: Colors.white,
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
          children: [
            Text(
              "Track Orders",
              style: AppText.largeText.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 9,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(12, 26),
                    blurRadius: 50,
                    color: Colors.blueGrey[100]!.withOpacity(.4),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                children: [
                  Image.asset(AppAssets.profilePhoto1),
                  const SizedBox(
                    width: 14,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Mr Kemplas",
                        style: AppText.regularText
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppAssets.compas,
                            height: 14,
                            width: 14,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            "25 Minutes on the way",
                            style: AppText.smallText
                                .copyWith(color: Colors.grey[300]),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 11,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(12, 26),
                          blurRadius: 50,
                          color: Colors.blueGrey[100]!.withOpacity(.4),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const GreenText(text: "Call", size: 15),
                        const SizedBox(
                          width: 8,
                        ),
                        ShaderMask(
                          blendMode: BlendMode.srcIn,
                          shaderCallback: (rect) => const LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color(0xff53E88B),
                              Color(0xff15BE77),
                            ],
                          ).createShader(rect),
                          child: const FaIcon(
                            FontAwesomeIcons.phone,
                            size: 18,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 11,
                  width: MediaQuery.of(context).size.height / 11,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(colors: greenGradient)),
                  child: Center(
                    child: Container(
                        height: 23,
                        width: 26,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white),
                        child: Center(
                          child: Image.asset(
                            AppAssets.arrowDown,
                            height: 14,
                            width: 14,
                          ),
                        )),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
