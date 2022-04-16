import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_ui_kit/models/feedback.dart';
import 'package:food_delivery_ui_kit/utils/app_assets.dart';
import 'package:food_delivery_ui_kit/utils/colors_const.dart';
import 'package:food_delivery_ui_kit/utils/data.dart';
import 'package:food_delivery_ui_kit/utils/text_style.dart';
import 'package:food_delivery_ui_kit/widgets/custom_text.dart';
import 'package:food_delivery_ui_kit/widgets/green_button.dart';
import 'package:food_delivery_ui_kit/widgets/pop_button.dart';
import 'package:food_delivery_ui_kit/widgets/title_section.dart';

class DetailProduct extends StatelessWidget {
  const DetailProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset(
            AppAssets.photoRestaurant,
            height: 360,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          ListView(
            shrinkWrap: false,
            children: [
              const SizedBox(
                height: 240,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(34),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    //NOTE: Heading&Title
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 26),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Container(
                              height: 6,
                              width: 70,
                              decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 30,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: accentColor.withOpacity(.1),
                                  borderRadius: BorderRadius.circular(
                                    20,
                                  ),
                                ),
                                child:
                                    const GreenText(text: "Popular", size: 12),
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 34,
                                    width: 34,
                                    decoration: BoxDecoration(
                                      color: accentColor.withOpacity(.1),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: SvgPicture.asset(
                                        AppAssets.svgLocation,
                                        color: Colors.green,
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
                                      color: Colors.red.withOpacity(.1),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Center(
                                      child: Icon(
                                        Icons.favorite_rounded,
                                        color: Colors.red,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Rainbow Sandwich Sugarless",
                            style: AppText.infoText.copyWith(
                                fontWeight: FontWeight.bold, fontSize: 28),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    //NOTE: Main Facilities
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                AppAssets.mapPinOutlined,
                                height: 20,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                "19 Km",
                                style: AppText.regularText
                                    .copyWith(color: Colors.grey[300]),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                AppAssets.halfStar,
                                height: 20,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                "4.8 Rating",
                                style: AppText.regularText
                                    .copyWith(color: Colors.grey[300]),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        "Nulla occaecat velit laborum exercitation ullamco. Elit labore eu aute elit nostrud culpa velit excepteur deserunt sunt. Velit non est cillum consequat cupidatat ex Lorem laboris labore aliqua ad duis eu laborum.",
                        style: AppText.smallText.copyWith(height: 1.7),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 4,
                                width: 4,
                                decoration: const BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text("Strowberry", style: AppText.smallText),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 4,
                                width: 4,
                                decoration: const BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text("Cream", style: AppText.smallText),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 4,
                                width: 4,
                                decoration: const BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text("Wheat", style: AppText.smallText),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        "Nulla occaecat velit laborum exercitation ullamco. cupidatat ex Lorem laboris labore aliqua ad duis eu laborum.",
                        style: AppText.smallText.copyWith(height: 1.7),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Text("Testimonials",
                          style: AppText.mediumText
                              .copyWith(fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(
                      height: 20,
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
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: GreenButton(
          title: "Add To Chart",
          isLong: true,
          onTap: () {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
