import 'package:flutter/material.dart';
import 'package:food_delivery_ui_kit/screens/on_boarding_content.dart';
import 'package:food_delivery_ui_kit/utils/app_assets.dart';
import 'package:food_delivery_ui_kit/widgets/green_button.dart';

import 'login_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentPage = 0;
  final PageController _controller = PageController();

  List<Map<String, String>> onBoardData = [
    {
      "text": "Find your comfort food here",
      "subText":
          "Here you can find a chef or dish for every taste and color, Enjoy!",
      "image": AppAssets.onBoard_1
    },
    {
      "text": "Food Ninja is Where Your Comfort Food Lives",
      "subText": "Enjoy a fast and smooth food delivery at your doorstrap",
      "image": AppAssets.onBoard_2
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 40,
            ),
            Expanded(
              flex: 4,
              child: PageView.builder(
                controller: _controller,
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: onBoardData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: onBoardData[index]["image"],
                  text: onBoardData[index]['text'],
                  subText: onBoardData[index]['subText'],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 6,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                ).copyWith(bottom: 50),
                child: Column(
                  children: <Widget>[
                    GreenButton(
                      onTap: () {
                        if (currentPage == 1) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const LoginScreen(),
                            ),
                          );
                        } else {
                          _controller.nextPage(
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeOut);
                        }
                      },
                      title: 'Next',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
