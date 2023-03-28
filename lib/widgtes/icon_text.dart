import 'package:flutter/material.dart';
import 'package:food_delivery/widgtes/small_text.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon; //We declare an icon with a type IconData
  final String text;
  final Color iconColor;
  const IconAndTextWidget({Key? key, required this.icon, required this.text, required this.iconColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor),
        SmallText(text: text,)
      ],


    );
  }
}
