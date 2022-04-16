import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_ui_kit/screens/set_location_screen.dart';
import 'package:food_delivery_ui_kit/utils/app_assets.dart';
import 'package:food_delivery_ui_kit/utils/text_style.dart';
import 'package:food_delivery_ui_kit/widgets/green_button.dart';
import 'package:food_delivery_ui_kit/widgets/pop_button.dart';

class UploadPhotoScreen extends StatefulWidget {
  const UploadPhotoScreen({Key? key}) : super(key: key);

  @override
  State<UploadPhotoScreen> createState() => _UploadPhotoScreenState();
}

class _UploadPhotoScreenState extends State<UploadPhotoScreen> {
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
                "Upload Your Photo Profile",
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
              isPhoto
                  ? Center(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isPhoto = false;
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.only(top: 50),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              AppAssets.imageUser_1,
                              height: MediaQuery.of(context).size.height / 3,
                              width: MediaQuery.of(context).size.width / 1.5,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    )
                  : Column(
                      children: [
                        _photoCard(AppAssets.svgGallery, "From Gallery"),
                        _photoCard(AppAssets.svgCamera, "Take Photo"),
                      ],
                    ),
              const Spacer(),
              Align(
                alignment: Alignment.bottomCenter,
                child: GreenButton(
                  title: "Next",
                  onTap: () {
                    isPhoto
                        ? Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const SetLocationScreen(),
                            ),
                          )
                        : isPhoto = true;
                    setState(() {});
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

  _photoCard(String iconName, String text) {
    return InkWell(
      onTap: () {
        setState(() {
          isPhoto = true;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        height: 130,
        width: double.infinity,
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
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(iconName),
            const SizedBox(
              height: 10,
            ),
            Text(
              text,
              style: AppText.mediumText.copyWith(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
