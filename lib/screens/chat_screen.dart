import 'package:flutter/material.dart';
import 'package:food_delivery_ui_kit/models/chat.dart';
import 'package:food_delivery_ui_kit/screens/chating_screen.dart';
import 'package:food_delivery_ui_kit/utils/app_assets.dart';
import 'package:food_delivery_ui_kit/utils/text_style.dart';
import 'package:food_delivery_ui_kit/widgets/pop_button.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({Key? key}) : super(key: key);

  final List<Chat> _chatList = [
    Chat(
        image: AppAssets.profilePhoto1,
        name: "Anamwp",
        message: "Your Order Just Arived!",
        time: "20:00"),
    Chat(
        image: AppAssets.profilePhoto2,
        name: "Anamwp",
        message: "Your Order Just Arived!",
        time: "20:00"),
    Chat(
        image: AppAssets.profilePhoto3,
        name: "Anamwp",
        message: "Your Order Just Arived!",
        time: "20:00"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.smallPattern),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Text(
              "Chat",
              style: AppText.infoText.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemCount: _chatList.length,
              itemBuilder: (context, i) => _cardContainer(
                  _chatList[i].image!,
                  _chatList[i].name!,
                  _chatList[i].message!,
                  _chatList[i].time!, () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChatingScreen(),
                  ),
                );
              }),
            ),
          )
        ],
      ),
    );
  }

  _cardContainer(String image, String name, String message, String time,
      Function()? onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10).copyWith(right: 20),
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 10),
        height: 87,
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
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    image,
                    height: 64,
                    width: 64,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      style: AppText.regularText
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      message,
                      style: AppText.smallText.copyWith(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              time,
              style: AppText.smallText.copyWith(
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
