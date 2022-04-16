import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_ui_kit/models/feedback.dart';

import 'package:food_delivery_ui_kit/utils/app_assets.dart';
import 'package:food_delivery_ui_kit/utils/colors_const.dart';
import 'package:food_delivery_ui_kit/utils/data.dart';
import 'package:food_delivery_ui_kit/utils/text_style.dart';
import 'package:food_delivery_ui_kit/widgets/custom_text.dart';
import 'package:food_delivery_ui_kit/widgets/pop_button.dart';
import 'package:food_delivery_ui_kit/widgets/title_section.dart';

class DetailResto extends StatelessWidget {
  const DetailResto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset(
            AppAssets.photoRestaurant,
            width: MediaQuery.of(context).size.width,
            height: 360,
            fit: BoxFit.cover,
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 10),
                            decoration: BoxDecoration(
                              color: accentColor.withOpacity(.1),
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: const GreenText(text: "Popular", size: 14),
                          ),
                          Row(
                            children: [
                              Container(
                                height: 34,
                                width: 34,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: accentColor.withOpacity(.1),
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    AppAssets.svgLocation,
                                    color: Colors.green[400],
                                    height: 18,
                                    width: 18,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 34,
                                width: 34,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.red.withOpacity(.1),
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.favorite,
                                    size: 18,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 33, right: 30),
                      child: Text(
                        "Wijie Bar and Resto",
                        style: AppText.infoText.copyWith(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    //NOTE: Photos
                    Padding(
                      padding: const EdgeInsets.only(left: 33, right: 30),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                AppAssets.mapPinOutlined,
                                height: 20,
                                width: 20,
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              Text(
                                "19 KM",
                                style: AppText.regularText
                                    .copyWith(color: Colors.grey[300]),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 18,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                AppAssets.halfStar,
                                height: 20,
                                width: 20,
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              Text(
                                "4.8 Rating",
                                style: AppText.regularText
                                    .copyWith(color: Colors.grey[300]),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 33,
                        right: 30,
                      ),
                      child: Text(
                        "Most whole Alaskan Red King Crabs get broken down into legs, claws, and lump meat. We offer all of these options as well in our online shop, but there is nothing like getting the whole . . . .",
                        style: AppText.smallText.copyWith(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 33, right: 30),
                      child: TitleSection(label: "Popular Menu"),
                    ),

                    SizedBox(
                      height: MediaQuery.of(context).size.height / 3.2,
                      child: ListView.builder(
                        padding: const EdgeInsets.only(bottom: 26, top: 20),
                        shrinkWrap: true,
                        itemCount: 3,
                        itemBuilder: (context, i) => Container(
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 10,
                            top: 40,
                          ),
                          margin: EdgeInsets.only(
                            left: i == 0 ? 33 : 20,
                          ),
                          height: 172,
                          width: 146,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(2, 6),
                                blurRadius: 50,
                                color: Colors.blueGrey[100]!.withOpacity(.3),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                AppAssets.meat,
                                height: 70,
                                width: 70,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Spacy fresh crab",
                                style: AppText.regularText
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "12 \$",
                                style: AppText.smallText.copyWith(
                                    fontWeight: FontWeight.w300,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    //? NOTE: Location
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        "Testimonials",
                        style: AppText.mediumText
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),

                    Column(
                      children: feedBackList
                          .map(
                            (FeedBack data) => Container(
                              padding: const EdgeInsets.only(
                                  top: 10, left: 10, right: 26, bottom: 20),
                              margin: const EdgeInsets.symmetric(
                                      horizontal: 25, vertical: 20)
                                  .copyWith(top: 0),
                              height: 128,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                  22,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    offset: const Offset(2, 6),
                                    blurRadius: 50,
                                    color:
                                        Colors.blueGrey[100]!.withOpacity(.3),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                              width: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    data.image,
                                    height: 64,
                                    width: 64,
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.9,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  data.userName,
                                                  style: AppText.mediumText
                                                      .copyWith(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                ),
                                                Text(
                                                  data.date,
                                                  style: AppText.smallText
                                                      .copyWith(
                                                    fontWeight: FontWeight.w300,
                                                    color: Colors.grey[400],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              height: 34,
                                              width: 54,
                                              decoration: BoxDecoration(
                                                color:
                                                    accentColor.withOpacity(.1),
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              ),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Image.asset(
                                                    AppAssets.star,
                                                    height: 16,
                                                    width: 16,
                                                  ),
                                                  const SizedBox(
                                                    width: 4,
                                                  ),
                                                  GreenText(
                                                      text: data.rate, size: 17)
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 18,
                                      ),
                                      SizedBox(
                                        height: 32,
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2.2,
                                        child: Text(
                                          data.message,
                                          style: AppText.smallText,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                PopButton(
                  isWhite: true,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
