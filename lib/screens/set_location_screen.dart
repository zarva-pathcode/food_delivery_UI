import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_ui_kit/screens/success_screen.dart';
import 'package:food_delivery_ui_kit/utils/app_assets.dart';
import 'package:food_delivery_ui_kit/utils/colors_const.dart';
import 'package:food_delivery_ui_kit/utils/text_style.dart';
import 'package:food_delivery_ui_kit/widgets/green_button.dart';
import 'package:food_delivery_ui_kit/widgets/pop_button.dart';

class SetLocationScreen extends StatefulWidget {
  const SetLocationScreen({Key? key}) : super(key: key);

  @override
  State<SetLocationScreen> createState() => _SetLocationScreenState();
}

class _SetLocationScreenState extends State<SetLocationScreen> {
  bool isPhoto = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage(AppAssets.smallPattern),
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const PopButton(),
              Text(
                "Set Your Location",
                style: AppText.largeText.copyWith(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: Text(
                    "This data will be displayed in your account profile for security",
                    style: AppText.smallText.copyWith(color: Colors.black),
                  )),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height / 5,
                width: double.infinity,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(6),
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: yellowColor),
                          child: SvgPicture.asset(
                            AppAssets.svgLocation,
                          ),
                        ),
                        const SizedBox(
                          width: 14,
                        ),
                        Text(
                          "Set Location",
                          style: AppText.mediumText
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 12,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(.1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          "Set Location",
                          style: AppText.regularText.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Spacer(),
              Align(
                alignment: Alignment.bottomCenter,
                child: GreenButton(
                  title: "Next",
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const SuccessScreen(),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 45,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
