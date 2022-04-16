import 'package:flutter/material.dart';
import 'package:food_delivery_ui_kit/utils/app_assets.dart';
import 'package:food_delivery_ui_kit/utils/text_style.dart';
import 'package:food_delivery_ui_kit/widgets/pop_button.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 10),
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
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 26,
                vertical: 30,
              ).copyWith(bottom: 0),
              child: const PopButton(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: Text(
                "Notification",
                style: AppText.infoText.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            _cardContainer(
                context,
                AppAssets.completeNotif,
                "Your order has been taken by the driver",
                "Recently",
                () => null),
            _cardContainer(context, AppAssets.topUpNotif,
                "Topup for \$100 was successful", "10:10 AM", () => null),
            _cardContainer(context, AppAssets.canceledNotif,
                "Your order has been canceled", "22 June 2021", () => null)
          ],
        ),
      ),
    );
  }

  _cardContainer(BuildContext context, String image, String message,
      String time, Function()? onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10).copyWith(right: 20),
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 20, right: 20, left: 20),
        height: 110,
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                image,
                height: 64,
                width: 64,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width / 1.75,
                  child: Text(
                    message,
                    style: AppText.regularText
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  time,
                  style: AppText.regularText.copyWith(color: Colors.grey[300]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
