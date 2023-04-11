import 'package:flutter/material.dart';
import 'package:food_delivery/widgtes/icon_text.dart';
import 'package:food_delivery/widgtes/small_text.dart';

import '../Utils/dimensions_screen.dart';
import '../colors.dart';
import 'big_texts.dart';

class AppColumn extends StatelessWidget {
  final String text;

  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      BigText(
        text: text,
        size: Dimensions.font26,
      ),
      SizedBox(
        height: Dimensions.height10,
      ),
      Row(
        children: [
          Wrap(
            children: List.generate(
                5,
                (index) => Icon(
                      Icons.star,
                      color: AppColors.mainColour,
                    )),
          ),
          SizedBox(
            width: Dimensions.width10,
          ),
          SizedBox(
            height: Dimensions.height10,
          ),
          SmallText(text: "4.5"),
          SizedBox(
            width: Dimensions.width10,
          ),
          SmallText(text: "2271"),
          SizedBox(
            width: Dimensions.width10,
          ),
          SmallText(text: "comments")
        ],
      ),
      SizedBox(
        height: Dimensions.height10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconAndTextWidget(
              icon: Icons.circle_sharp,
              text: " Normal",
              iconColor: AppColors.iconColour1),
          SizedBox(width: 10),
          IconAndTextWidget(
              icon: Icons.location_on,
              text: "1.7km",
              iconColor: AppColors.mainColour),
          SizedBox(width: 10),
          IconAndTextWidget(
              icon: Icons.access_time_filled_rounded,
              text: " 32min",
              iconColor: AppColors.iconColour2)
        ],
      ),
    ]);
  }
}
