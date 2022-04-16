import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery_ui_kit/models/popular_menu.dart';
import 'package:food_delivery_ui_kit/screens/voucher_screen.dart';
import 'package:food_delivery_ui_kit/utils/app_assets.dart';
import 'package:food_delivery_ui_kit/utils/colors_const.dart';
import 'package:food_delivery_ui_kit/utils/data.dart';
import 'package:food_delivery_ui_kit/utils/text_style.dart';
import 'package:food_delivery_ui_kit/widgets/custom_text.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AppAssets.imageUser_1,
          width: MediaQuery.of(context).size.width,
        ),
        ListView(
          shrinkWrap: false,
          children: [
            const SizedBox(
              height: 288,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: Container(
                      height: 5,
                      width: 65,
                      decoration: BoxDecoration(
                        color: yellowColor.withOpacity(.1),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 33, right: 30),
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 14),
                        decoration: BoxDecoration(
                          color: yellowColor.withOpacity(.1),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Text(
                          "Member Gold",
                          style: AppText.smallText.copyWith(
                              color: orangeColor, fontWeight: FontWeight.bold),
                        )),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 33, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Anam Wusono",
                          style: AppText.infoText.copyWith(
                              fontWeight: FontWeight.bold, fontSize: 25),
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
                            FontAwesomeIcons.edit,
                            size: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "anamwp66@gmail.com",
                      style: AppText.smallText.copyWith(
                        color: Colors.grey[300],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const VoucherScreen(),
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15),
                            ),
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(12, 26),
                                blurRadius: 50,
                                color: Colors.blueGrey[100]!.withOpacity(.4),
                                spreadRadius: 0,
                              )
                            ]),
                        child: Row(
                          children: [
                            Image.asset(AppAssets.voucherIcon, height: 46),
                            const SizedBox(
                              width: 16,
                            ),
                            Text(
                              "You Have 3 Voucher",
                              style: AppText.regularText.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "Favorite",
                      style: AppText.regularText
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: popularMenu
                          .map(
                            (PopularMenu data) => Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 14),
                              margin: const EdgeInsets.only(bottom: 18),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: const Offset(12, 26),
                                      blurRadius: 50,
                                      color:
                                          Colors.blueGrey[100]!.withOpacity(.4),
                                      spreadRadius: 0,
                                    )
                                  ]),
                              height: MediaQuery.of(context).size.height / 8,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    data.image,
                                    height: 62,
                                    width: 62,
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        data.foodName,
                                        style: AppText.regularText.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        data.foodPlace,
                                        style: AppText.smallText
                                            .copyWith(color: Colors.grey[300]),
                                      ),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      GreenText(
                                          text: "\$${data.price}", size: 20)
                                    ],
                                  ),
                                  const Spacer(),
                                  Container(
                                    height: 30,
                                    width: 85,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        gradient: LinearGradient(
                                            colors: greenGradient)),
                                    child: Center(
                                      child: Text(
                                        "Buy Again",
                                        style: AppText.smallText.copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  const SizedBox(
                    height: 120,
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
