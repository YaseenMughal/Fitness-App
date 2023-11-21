import 'package:fitness_app/utils/color_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

styLe(double fontsize, var color, var fontweight) {
  return TextStyle(
    fontSize: fontsize,
    color: color,
    fontFamily: "Poppin",
    fontWeight: fontweight,
  );
}

// Widget for Training Option Box
Widget trainingOptionBox(
    String title, String subtitle, VoidCallback onTap, bool isSelected) {
  return InkWell(
    onTap: onTap,
    child: SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            height: Get.height * .22,
            width: Get.width * .4,
            decoration: BoxDecoration(
              color: kSecondColor,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  offset: Offset(3, 3),
                  blurRadius: 8,
                  spreadRadius: -8,
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: styLe(23, kFirstColor, FontWeight.w700)),
                  SizedBox(height: Get.height * .01),
                  Text(subtitle,
                      style: styLe(12, Colors.white, FontWeight.w300)),
                ],
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 15,
            child: Container(
              height: 35,
              width: 35,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF373850),
              ),
              child: isSelected
                  ? const Center(
                      child: Icon(
                        Icons.done,
                        color: kFirstColor,
                      ),
                    )
                  : const SizedBox(),
            ),
          ),
        ],
      ),
    ),
  );
}

textbutton(ontap, double radiusSize, color, BoxBorder? border, text) {
  return TextButton(
    onPressed: ontap,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radiusSize),
        border: border,
        color: color,
      ),
      height: 50,
      width: Get.width * 0.7,
      child: Center(
        child: Text(text, style: styLe(18, Colors.white, FontWeight.w400)),
      ),
    ),
  );
}
