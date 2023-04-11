import 'package:flutter/material.dart';
import 'package:food_delivery/Utils/dimensions_screen.dart';
import 'package:food_delivery/colors.dart';
import 'package:food_delivery/widgtes/small_text.dart';

class Expand extends StatefulWidget {
  final String text;

//The String text variable is not in the state class of Expand because it is not a stateful variable, meaning it does not need to be updated dynamically.
  const Expand({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  State<Expand> createState() => _ExpandState();
}

class _ExpandState extends State<Expand> {
  late String firstHalf; //WE use late to specify we initialize later
  late String
      secondhalf; //if we dont mark it late that means we are to initialize it now

  bool hiddenText =
      true; //We set it to true because originally if the text is long it should be hidden

  double textHeight = Dimensions.screenHeight /
      5.63; //This is the height for the whole text if its more the text will be hidden.

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //This first condition is for if the text is longer than our height
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(
          0, textHeight.toInt()); //We make textheight to int to avoid errors
      secondhalf = widget.text.substring(
          textHeight.toInt() + 1,
          widget.text
              .length); // plus 1 here means it should continue from where we stopped
    }
    //Now this is when the text isnt above our preferred height
    else {
      firstHalf = widget.text;
      secondhalf =
          ""; //Remember this two variables first and second were set as late
      // So we cant leave secondhalf as null it has to be initialized
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //Lets do a conditional text here
      //what we did below was that if secondhalf is empty (that means the text isnt really wrong)
      //Then we use our Smalltext and pass firsthalf (Read condition 1 above)
      child: secondhalf.isEmpty
          ? SmallText(
              height: 1.8,
              text: firstHalf,
              size: 16,
              color: AppColors.paraColour,
            )
          : Column(
              children: [
                //So if the condition in the container above is false it returns Column
                //Since the text are stacked
                //The we pass another condition if
                SmallText(
                    height: 1.8,
                    color: AppColors.paraColour,
                    size: 16,
                    text: hiddenText
                        ? (firstHalf + "...")
                        : (firstHalf + secondhalf)),
                InkWell(
                  //The reason why hiddenText is negated within the onTap function is to toggle its value between true and false.
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(
                    children: [
                      SmallText(
                        text: "Show more",
                        color: AppColors.mainColour,
                      ),
                      Icon(
                        hiddenText
                            ? Icons.arrow_drop_down
                            : Icons.arrow_drop_up,
                        color: AppColors.iconColour1,
                      )
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
