import 'package:flutter/material.dart';
import 'package:food_delivery/pages/homepage/main_food_page.dart';
import 'package:food_delivery/pages/popular_food.dart';
import 'package:get/get.dart';
import 'package:food_delivery/pages/homepage/recommended.dart';

void main() {
  runApp(GetMaterialApp(
    home: ReccomendedFood(), //MainFoodPage(),
    debugShowCheckedModeBanner: false,
  ));
}
