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

spanbottomtxt(double size, txt1, txt2) {
  return RichText(
    text: TextSpan(
      text: '$txt1\t',
      style: styLe(size, kFirstColor, FontWeight.bold),
      children: <TextSpan>[
        TextSpan(
          text: txt2,
          style: styLe(size, Colors.white, FontWeight.bold),
        ),
      ],
    ),
  );
}

textField(String text, TextEditingController controller) {
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      hintText: text,
      hintStyle: TextStyle(color: Colors.grey),
    ),
  );
}

backgroundImage(image) {
  return Container(
    height: Get.height * .5,
    width: Get.width,
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
    ),
  );
}
