import 'package:flutter/material.dart';
import 'package:food_delivery_ui_kit/widgets/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, ch) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: ch!),
      title: 'Food Delivery Order',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BotNavbar(),
    );
  }
}
