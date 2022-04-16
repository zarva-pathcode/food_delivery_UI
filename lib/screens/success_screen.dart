import 'package:flutter/material.dart';
import 'package:food_delivery_ui_kit/screens/home_screen.dart';
import 'package:food_delivery_ui_kit/utils/app_assets.dart';
import 'package:food_delivery_ui_kit/utils/text_style.dart';
import 'package:food_delivery_ui_kit/widgets/custom_text.dart';
import 'package:food_delivery_ui_kit/widgets/green_button.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage(AppAssets.backgroundPattern),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset(AppAssets.success, height: 180, width: 180),
            const SizedBox(height: 30),
            const GreenText(
              text: "Congrats!",
              size: 40,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Your Profile Is Ready To Use",
              style: AppText.largeText
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            const Spacer(),
            GreenButton(
              title: "Try Order",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const HomeScreen(),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
