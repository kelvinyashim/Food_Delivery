import 'package:flutter/material.dart';


//We created this widget
//Because for our App we want the Text to be reusable so we can specify the properties we want in this class
class BigText extends StatelessWidget { //? optional
  final Color? color; //Since we want the color of texts to change at some point in different containers the color has to be dynamic
  //Color doesnt have required because we made it optional to change ? hence it has a value
  final String text; // We'll have different texts as headers for the App
  double size; //Size for the texts //Now for size and overflow they do not need required because they have values
  TextOverflow overflow; //Now in a case where a food name takes up more space than screen we use this then set it in the constructor
  BigText({Key? key,
    this.color = const Color(0xFF332d2b),
    required this.text,
    this.size=20,
    this.overflow = TextOverflow.ellipsis
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
        text,
      maxLines: 1, //This means if the line is more than 1 line then overflow
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w400,
        fontFamily: "Roboto",
        fontSize: size
      ),
    );
  }
}
