import 'package:fitness_app/utils/button_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'color_utils.dart';

Widget bottomText(String title, String subtitle) {
  Color titleColor = Colors.white;
  Color subtitleColor = Colors.grey;
  return Align(
    alignment: Alignment.bottomLeft,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: styLe(
            Get.width * .09,
            titleColor,
            FontWeight.w600,
          ),
        ),
        Text(subtitle,
            style: styLe(Get.width * .036, subtitleColor, FontWeight.w300)),
      ],
    ),
  );
}

spanText() {
  return RichText(
    text: const TextSpan(
      text: 'HARD\t',
      style: TextStyle(
          fontFamily: "Poppin",
          fontSize: 30,
          letterSpacing: 4,
          fontWeight: FontWeight.bold),
      children: <TextSpan>[
        TextSpan(
          text: 'ELEMENT',
          style: TextStyle(
              fontFamily: "Poppin",
              color: kFirstColor,
              fontSize: 21,
              letterSpacing: 1,
              fontWeight: FontWeight.w400),
        ),
      ],
    ),
  );
}

textField(String text) {
  return TextField(
    decoration: InputDecoration(
        hintText: text,
        hintStyle: TextStyle(color: Colors.grey),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
  );
}
