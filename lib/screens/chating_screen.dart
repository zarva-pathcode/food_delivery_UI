import 'package:flutter/material.dart';
import 'package:food_delivery_ui_kit/screens/calling_screen.dart';
import 'package:food_delivery_ui_kit/utils/app_assets.dart';
import 'package:food_delivery_ui_kit/utils/colors_const.dart';
import 'package:food_delivery_ui_kit/utils/text_style.dart';
import 'package:food_delivery_ui_kit/widgets/pop_button.dart';

class ChatingScreen extends StatelessWidget {
  const ChatingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.backgroundPattern),
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
                "Chat",
                style: AppText.infoText.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Container(
              padding: const EdgeInsets.all(10).copyWith(right: 20),
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 87,
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
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          AppAssets.profilePhoto1,
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
                          Text(
                            "Dianne Russell",
                            style: AppText.regularText
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Container(
                                height: 5,
                                width: 5,
                                decoration: BoxDecoration(
                                    gradient:
                                        LinearGradient(colors: greenGradient),
                                    shape: BoxShape.circle),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                "Online",
                                style: AppText.smallText
                                    .copyWith(color: Colors.grey),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const CallingScreen(),
                        ),
                      );
                    },
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          color: accentColor.withOpacity(.1),
                          shape: BoxShape.circle),
                      child: Icon(
                        Icons.phone,
                        color: Colors.green[600],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: MediaQuery.of(context).size.height / 9,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 0),
              blurRadius: 50,
              color: Colors.blueGrey[100]!.withOpacity(.4),
              spreadRadius: 0,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Okay I'm waiting ",
              style: AppText.chatText,
            ),
            Image.asset(
              AppAssets.sendIcon,
              height: 24,
              width: 24,
            )
          ],
        ),
      ),
    );
  }
}
