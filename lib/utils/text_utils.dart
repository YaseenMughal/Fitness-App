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
          text: ' $txt2',
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

searchField(TextEditingController controller) {
  return TextField(
    style: styLe(13, Colors.grey, FontWeight.w400),
    controller: controller,
    decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
        hintText: "Search Workout..",
        hintStyle: TextStyle(color: Colors.white, letterSpacing: 1),
        fillColor: kSecondColor,
        filled: true,
        suffixIcon: Icon(
          Icons.search,
          color: Colors.white,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          borderSide: BorderSide(width: 2, color: kThirdColor),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          borderSide:
              BorderSide(width: 0.1, color: Color.fromRGBO(130, 129, 129, 1)),
        )),
  );
}

styLe(double fontsize, var color, var fontweight) {
  return TextStyle(
    fontSize: fontsize,
    color: color,
    fontFamily: "Poppin",
    fontWeight: fontweight,
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
