import 'package:flutter/material.dart';
import 'package:food_delivery_ui_kit/screens/payment_method_screen.dart';
import 'package:food_delivery_ui_kit/utils/app_assets.dart';
import 'package:food_delivery_ui_kit/utils/text_style.dart';
import 'package:food_delivery_ui_kit/widgets/green_button.dart';
import 'package:food_delivery_ui_kit/widgets/main_form_field.dart';
import 'package:food_delivery_ui_kit/widgets/pop_button.dart';

class SignUpFillScreen extends StatelessWidget {
  const SignUpFillScreen({Key? key}) : super(key: key);

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
                "Fill in your bio to get started",
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
              const MainFormField(
                hintText: "First Name",
                isProcess: true,
              ),
              const MainFormField(
                hintText: "Last Name",
                isProcess: true,
              ),
              const MainFormField(
                hintText: "Mobile Number",
                isProcess: true,
              ),
              const Spacer(),
              Align(
                alignment: Alignment.bottomCenter,
                child: GreenButton(
                  title: "Next",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const PaymentMethodScreen()));
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
