import 'package:flutter/material.dart';
import 'package:food_delivery_ui_kit/screens/filter_screen.dart';
import 'package:food_delivery_ui_kit/utils/app_assets.dart';

import 'package:food_delivery_ui_kit/utils/colors_const.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => const FilterScreen(),
        ),
      ),
      child: Container(
        height: 50,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: orangeColor.withOpacity(.1),
        ),
        child: Image.asset(
          AppAssets.filterIcon,
          height: 22,
        ),
      ),
    );
  }
}
