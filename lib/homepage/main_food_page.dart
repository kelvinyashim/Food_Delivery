import 'package:flutter/material.dart';
import 'package:food_delivery/colors.dart';
import 'package:food_delivery/widgtes/big_texts.dart';
import 'package:food_delivery/widgtes/small_text.dart';
import 'package:food_delivery/homepage/food_page_slide.dart';
class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(//We'll use this later
            child: Container(
              //We can add a margin because the Containers are to close up to the screen
              margin: EdgeInsets.only(top: 35, bottom: 20), //Now the two containers are spaceBetween too much we can adjust that with padding
              padding:  EdgeInsets.only(left: 20, right: 20),
              child: Column(//Now with this Column the containers appear at the top
                children: [
                  Row(//default property is vertically center
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(//Columns default property is at the top
                        children: [//NOW WE CREATED A CLASS FOR TEXT SO WE USE IT HERE (BigText)
                          BigText(text: "Nigeria", color: AppColors.mainColour, size: 20), //we can call the main color because the default color is same
                          Row(
                            children: [
                              SmallText(text: "Abuja", height: 1.3, size: 12, color: AppColors.signColour),
                              Icon(Icons.arrow_drop_down_rounded) //Next is the Food Page Viewer
                            ],


                          )//Now we add an icon br wrapping the smalltext with a row

                        ],
                      ),
                      Center(
                        child: Container(//Row property
                          width: 45,
                          height: 45,
                          child: Icon(Icons.search, color: Colors.white),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: AppColors.mainColour
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          FoodPageView()
        ],
      ),


    );
  }
}
