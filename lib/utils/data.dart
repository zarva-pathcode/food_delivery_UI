import 'package:flutter/material.dart';
import 'package:food_delivery_ui_kit/models/feedback.dart';
import 'package:food_delivery_ui_kit/models/popular_menu.dart';
import 'package:food_delivery_ui_kit/screens/detail_resto.dart';
import 'package:food_delivery_ui_kit/utils/app_assets.dart';

final List<PopularMenu> popularMenu = [
  PopularMenu(
    image: AppAssets.herbal,
    foodName: "Herbal Pancake",
    foodPlace: "Warung Herbal",
    price: "7",
    isDisabled: false,
  ),
  PopularMenu(
    image: AppAssets.fruitSalad,
    foodName: "Fruit Salad",
    foodPlace: "Wijie Resto",
    price: "5",
    isDisabled: false,
  ),
  PopularMenu(
    image: AppAssets.greenNoddle,
    foodName: "Green Noddle",
    foodPlace: "Noddle Home",
    price: "15",
  )
];

final List<FeedBack> feedBackList = [
  FeedBack(
    image: AppAssets.profilePhoto1,
    userName: "Dianne Russell",
    date: "12 April 2021",
    message:
        "This is Great, So delicious! You must here, with your family or your friends there",
    rate: "5",
  ),
  FeedBack(
    image: AppAssets.profilePhoto2,
    userName: "Victoria Hanzel",
    date: "12 April 2021",
    message:
        "This is Great, So delicious! You must here, with your family or your friends there",
    rate: "5",
  ),
  FeedBack(
    image: AppAssets.profilePhoto2,
    userName: "Dianne Russell",
    date: "12 April 2021",
    message:
        "This is Great, So delicious! You must here, with your family or your friends there",
    rate: "5",
  ),
];
