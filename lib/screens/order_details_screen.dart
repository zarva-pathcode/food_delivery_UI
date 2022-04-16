import 'package:flutter/material.dart';
import 'package:food_delivery_ui_kit/screens/confirm_order.dart';

import 'package:food_delivery_ui_kit/utils/app_assets.dart';
import 'package:food_delivery_ui_kit/utils/colors_const.dart';
import 'package:food_delivery_ui_kit/utils/text_style.dart';
import 'package:food_delivery_ui_kit/widgets/custom_text.dart';
import 'package:food_delivery_ui_kit/widgets/pop_button.dart';

class OrderDetailsScreen extends StatelessWidget {
  OrderDetailsScreen({Key? key}) : super(key: key);

  final List<OrderModel> _orderList = [
    OrderModel(
        image: AppAssets.coffe,
        foodName: "Coffe",
        foodPlace: "Waroeng Kita",
        cost: "\$ 23",
        amount: 1),
    OrderModel(
        image: AppAssets.spaghetti,
        foodName: "Spaghetti",
        foodPlace: "Waroeng Kita",
        cost: "\$ 5",
        amount: 1),
    OrderModel(
        image: AppAssets.burito,
        foodName: "Burito",
        foodPlace: "Waroeng Kamu",
        cost: "\$ 20",
        amount: 1),
  ];

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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 26),
                child: PopButton(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26),
                child: Text(
                  "Order Details",
                  style: AppText.infoText.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: _orderList.length,
                itemBuilder: (context, i) => Column(
                  children: [
                    Dismissible(
                      key: Key(_orderList[i].foodName),
                      background: slideLeftBackground(),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.all(10).copyWith(right: 20),
                          width: double.infinity,
                          height: 110,
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      _orderList[i].image,
                                      height: 64,
                                      width: 64,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        _orderList[i].foodName,
                                        style: AppText.regularText.copyWith(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        _orderList[i].foodPlace,
                                        style: AppText.smallText
                                            .copyWith(color: Colors.grey[300]),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      ShaderMask(
                                        blendMode: BlendMode.srcIn,
                                        shaderCallback: (rect) =>
                                            const LinearGradient(
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                          colors: [
                                            Color(0xff53E88B),
                                            Color(0xff15BE77),
                                          ],
                                        ).createShader(rect),
                                        child: Text(
                                          _orderList[i].cost,
                                          style: AppText.largeText.copyWith(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 4.5,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 26,
                                      width: 26,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: accentColor.withOpacity(.1)),
                                      child: ShaderMask(
                                          blendMode: BlendMode.srcIn,
                                          shaderCallback: (rect) =>
                                              const LinearGradient(
                                                begin: Alignment.centerLeft,
                                                end: Alignment.centerRight,
                                                colors: [
                                                  Color(0xff53E88B),
                                                  Color(0xff15BE77),
                                                ],
                                              ).createShader(rect),
                                          child: const Icon(
                                            Icons.remove,
                                            size: 18,
                                          )),
                                    ),
                                    Text(
                                      "1",
                                      style: AppText.smallText,
                                    ),
                                    Container(
                                        height: 26,
                                        width: 26,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                              colors: greenGradient),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: const Icon(
                                          Icons.add,
                                          size: 18,
                                          color: Colors.white,
                                        )),
                                  ],
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
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 4,
                margin: const EdgeInsets.all(20).copyWith(bottom: 40),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                    builder: (_) => const ConfirmOrder()));
                          },
                          child:
                              const GreenText(text: "Place My Order", size: 16),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget slideLeftBackground() {
    return Container(
      height: 110,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: orangeColor,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Align(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const <Widget>[
            Icon(
              Icons.delete_outline,
              color: Colors.white,
            ),
            SizedBox(
              width: 30,
            )
          ],
        ),
        alignment: Alignment.centerRight,
      ),
    );
  }
}

class OrderModel {
  String image;
  String foodName;
  String foodPlace;
  String cost;
  int amount;
  OrderModel({
    required this.image,
    required this.foodName,
    required this.foodPlace,
    required this.cost,
    required this.amount,
  });
}
