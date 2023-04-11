import 'package:flutter/material.dart';
import 'package:food_delivery/Utils/dimensions_screen.dart';
import 'package:food_delivery/colors.dart';
import 'package:food_delivery/widgtes/AppColumn.dart';
import 'package:food_delivery/widgtes/big_texts.dart';
import 'package:food_delivery/widgtes/extendable_text_widget.dart';
import 'package:food_delivery/widgtes/icon_pop.dart';
import 'package:food_delivery/widgtes/small_text.dart';

import '../widgtes/icon_text.dart';

class PopularFoods extends StatelessWidget {
  const PopularFoods({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //scaffold has two properties body and bottomNavisomething
      backgroundColor: Colors.white,
      body: Stack(children: [
        // positioned is use to postion widgets or items on the screen onto each other
        //background image
        Positioned(
            //We can also put the height here instead of in the container
            left: 0,
            //This is the position of the container below
            right: 0,
            //So this means it should start at the left and end at the right
            child: Container(
              width: double.maxFinite,
              //this takes up all the available width
              height: 350,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/image/ww.jpg"))),
            )),
        //Icons
        Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart_checkout_outlined)
              ],
            )),
        //Introduction of food
        Positioned(
            top: 340,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
                padding: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                    top: Dimensions.height20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(13),
                        topRight: Radius.circular(13)),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(
                      text: 'Akara & Pap',
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    BigText(
                      text: "Introduce",
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    Expanded(
                        child: SingleChildScrollView(
                            child: Expand(
                                text:
                                    "AKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (fermented corn starch), bread and cornstarch (agidi or eko). The basic ingredient used for the preparation of this food is beans.AKARA, also known also fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (fermented corn starch), AKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (fermented corn starch), bread and cornstarch (agidi or eko). The basic ingredient used for the preparation of this food is beans.AKARA, also known also fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (fermented corn starch)AKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (fermented corn starch), bread and cornstarch (agidi or eko). The basic ingredient used for the preparation of this food is beans.AKARA, also known also fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (fermented corn starch)AKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (fermented corn starch), bread and cornstarch (agidi or eko). The basic ingredient used for the preparation of this food is beans.AKARA, also known also fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (fermented corn starch)AKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (fermented corn starch), bread and cornstarch (agidi or eko). The basic ingredient used for the preparation of this food is beans.AKARA, also known also fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (fermented corn starch)bread and cornstarch (agidi or eko). The basic ingredient used for the preparation of this food is beans.")))
                  ],
                ))),
        //expandable text
      ]),
      bottomNavigationBar: Container(
        height: 120,
        padding: EdgeInsets.only(
            top: Dimensions.height30,
            bottom: Dimensions.height30,
            left: Dimensions.width20,
            right: Dimensions.width20),
        //The padding up is to set or position the children container
        decoration: BoxDecoration(
            color: AppColors.buttonBackgroundColour,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(40), topLeft: Radius.circular(40))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: EdgeInsets.only(
                top: Dimensions.height20,
                bottom: Dimensions.height10,
                left: Dimensions.width20,
                right: Dimensions.width20,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Row(
                children: [
                  Icon(Icons.remove, color: AppColors.signColour),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  BigText(text: '0'),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  Icon(
                    Icons.add,
                    color: AppColors.signColour,
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: Dimensions.height20,
                bottom: Dimensions.height10,
                left: Dimensions.width20,
                right: Dimensions.width20,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.mainColour),
              child: BigText(text: "\$10 | Add to cart", color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
