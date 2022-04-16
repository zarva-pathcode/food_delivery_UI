import 'package:flutter/material.dart';
import 'package:food_delivery_ui_kit/screens/sign_up_fill_screen.dart';
import 'package:food_delivery_ui_kit/utils/app_assets.dart';
import 'package:food_delivery_ui_kit/utils/colors_const.dart';
import 'package:food_delivery_ui_kit/utils/text_style.dart';
import 'package:food_delivery_ui_kit/widgets/green_button.dart';
import 'package:food_delivery_ui_kit/widgets/main_form_field.dart';
import 'package:food_delivery_ui_kit/widgets/custom_text.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 26),
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage(AppAssets.backgroundPattern),
          ),
        ),
        child: Column(
          children: [
            const Spacer(),
            Image.asset(
              AppAssets.appLogo,
              height: 120,
              width: 160,
            ),
            const GreenText(
              text: "FoodNinja",
              size: 40,
            ),
            Text(
              "Deliver favorite food",
              style: AppText.regularText
                  .copyWith(fontWeight: FontWeight.bold, letterSpacing: 1),
            ),
            const Spacer(),
            Text(
              "Sign Up for free",
              style: AppText.infoText.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 26,
            ),
            const MainFormField(
              hintText: "Username",
              iconName: AppAssets.selectedProfile,
            ),
            const MainFormField(
              hintText: "Email",
              iconName: AppAssets.message,
            ),
            const MainFormField(
              hintText: "Password",
              iconName: AppAssets.lock,
            ),
            const SizedBox(
              height: 10,
            ),
            customWid("Keep me signed in"),
            customWid("Email me about special pricing"),
            const Spacer(),
            GreenButton(
              title: "Create Account",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const SignUpFillScreen(),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            const GreenText(text: "Already have an account?", size: 14),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  customWid(String text) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                color: Colors.green[600],
                shape: BoxShape.circle,
                gradient: LinearGradient(colors: greenGradient)),
            child: const Icon(
              Icons.check,
              color: Colors.white,
              size: 14,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: AppText.smallText.copyWith(color: Colors.grey[400]),
          )
        ],
      ),
    );
  }
}
