import 'package:flutter/material.dart';
import 'package:food_delivery/Utils/dimensions_screen.dart';
import 'package:food_delivery/colors.dart';
import 'package:food_delivery/widgtes/big_texts.dart';
import 'package:food_delivery/widgtes/extendable_text_widget.dart';
import 'package:food_delivery/widgtes/icon_pop.dart';

class ReccomendedFood extends StatelessWidget {
  const ReccomendedFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: // which are individual scrolling elements that can be combined to create a rich and dynamic scrolling experience.
            [
          SliverAppBar(
            toolbarHeight: 70,
            //This sets the heights for our icons even when we scroll
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                padding: EdgeInsets.only(top: 5, bottom: 10),
                child: Center(
                    child: BigText(
                  text: "FUFU",
                  size: Dimensions.font26,
                )),
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
              ),
            ),
            pinned: true,
            //this sets an app bar that remains visible at the top of the screen, even when the user scrolls.
            backgroundColor: AppColors.paraColour,
            expandedHeight: 300,
            //This expands the height of the image
            flexibleSpace: FlexibleSpaceBar(
              //This allows us put a background image
              background: Image.asset(
                "assets/image/akara.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                    left: Dimensions.width20, right: Dimensions.width20),
                child: Expand(
                    text:
                        "AKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (feAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (feAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (feAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (feAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (feAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (feAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (feAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (feAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (feAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (feAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (feAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (feAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (feAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (feAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (feAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (feAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (feAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (feAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (feAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (feAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (feAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (feAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (feAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (feAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (feAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (feAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (feAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (feAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (feAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (feAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (feAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (feAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (feAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (feAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (feAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (feAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (feAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (feAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (feAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (fermented corn sAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (fermented corn sAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (fermented corn sAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (fermented corn sAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (fermented corn sAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (fermented corn sAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (fermented corn sAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (fermented corn sAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (fermented corn sAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (fermented corn sAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (fermented corn sAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (fermented corn sAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (fermented corn sAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (fermented corn sAKARA, also known as fried bean cakes are mouth-watering snacks. This snack can be eaten at any time of day with pap (fermented corn s"),
              ),
            ],
          ))
        ],
      ),
      bottomNavigationBar: Container(),
    );
  }
}
