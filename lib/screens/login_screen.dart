import 'package:flutter/material.dart';
import 'package:food_delivery_ui_kit/screens/sign_up_screen.dart';
import 'package:food_delivery_ui_kit/utils/app_assets.dart';
import 'package:food_delivery_ui_kit/utils/text_style.dart';
import 'package:food_delivery_ui_kit/widgets/green_button.dart';
import 'package:food_delivery_ui_kit/widgets/main_form_field.dart';
import 'package:food_delivery_ui_kit/widgets/multi_button.dart';
import 'package:food_delivery_ui_kit/widgets/custom_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
              "Login To Your Account",
              style: AppText.infoText.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 26,
            ),
            const MainFormField(
              hintText: "Email",
            ),
            const MainFormField(hintText: "Password"),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Or Continue With",
              style: AppText.regularText.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: MultiButton(
                    title: "Facebook",
                    icon: AppAssets.svgFacebook,
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  width: 22,
                ),
                Expanded(
                  child: MultiButton(
                    title: "Google",
                    icon: AppAssets.svgGoogleIcon,
                    onPressed: () {},
                  ),
                )
              ],
            ),
            const Spacer(),
            const GreenText(text: "Forgot Your Password?", size: 14),
            const SizedBox(height: 20),
            GreenButton(
              title: "Login",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const SignUpScreen(),
                  ),
                );
              },
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
