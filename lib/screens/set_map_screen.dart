import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_ui_kit/screens/track_order_screen.dart';
import 'package:food_delivery_ui_kit/utils/app_assets.dart';
import 'package:food_delivery_ui_kit/utils/colors_const.dart';
import 'package:food_delivery_ui_kit/utils/text_style.dart';
import 'package:food_delivery_ui_kit/widgets/green_button.dart';

class SetMapScreen extends StatelessWidget {
  const SetMapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.mapBg),
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              height: MediaQuery.of(context).size.height / 12,
              child: Row(
                children: [
                  Image.asset(
                    AppAssets.searchIcon,
                    height: 24,
                    width: 24,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Find Your Location",
                    style: AppText.smallText.copyWith(color: orangeColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 20,
        ).copyWith(bottom: 12),
        height: MediaQuery.of(context).size.height / 4.1,
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
              "Your Location",
              style: AppText.smallText.copyWith(
                  color: Colors.grey[300], fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
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
            const Spacer(),
            GreenButton(
              title: "Set Location",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => TrackOrderScreen()));
              },
              isLong: true,
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
