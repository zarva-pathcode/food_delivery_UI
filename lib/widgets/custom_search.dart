import 'package:flutter/material.dart';
import 'package:food_delivery_ui_kit/utils/colors_const.dart';
import 'package:food_delivery_ui_kit/utils/text_style.dart';

class CustomSearch extends StatefulWidget {
  const CustomSearch({Key? key}) : super(key: key);

  @override
  State<CustomSearch> createState() => _CustomSearchState();
}

class _CustomSearchState extends State<CustomSearch> {
  bool isTapped = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  searchTapped() {
    setState(() {
      isTapped = !isTapped;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        searchTapped();
      },
      child: Container(
        padding: const EdgeInsets.all(14),
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: orangeColor.withOpacity(.1),
        ),
        child: isTapped
            ? const TextField(
                decoration: InputDecoration(border: InputBorder.none),
              )
            : Row(
                children: [
                  Icon(
                    Icons.search,
                    color: orangeColor,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "What do you want to order?",
                    style: AppText.smallText.copyWith(
                      color: orangeColor,
                    ),
                  )
                ],
              ),
      ),
    );
  }
}
