import 'package:flutter/material.dart';


//We created this widget
//Because for our App we want the Text to be reusable so we can specify the properties we want in this class
class SmallText extends StatelessWidget { //? optional
  final Color? color; //Since we want the color of texts to change at some point in different containers the color has to be dynamic
  //Color doesnt have required because we made it optional to change ? hence it has a value
  final String text; // We'll have different texts as headers for the App
  double size; //Size for the texts //Now for size and overflow they do not need required because they have values
  double height; // SO where we talk about the contents of the food the texts should be separated by height

  SmallText({Key? key,
    this.color = const Color(0xFFa9a29f),
    required this.text,
    this.size=12,
    this.height=1.2
  }) : super(key: key);
//All this are the defaults they all can be changed
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontWeight: FontWeight.w100,
          fontFamily: "Roboto",
          fontSize: size),
    );
  }
}
