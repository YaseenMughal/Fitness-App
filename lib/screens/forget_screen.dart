import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/button_utils.dart';
import '../utils/color_utils.dart';
import '../utils/text_utils.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({super.key});

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThirdColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: Get.height * .5,
                  width: Get.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/black/5.jpg"),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          kThirdColor,
                          Colors.transparent,
                        ]),
                  ),
                  height: Get.height * 0.55,
                  width: Get.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 20.0),
                    child: Column(
                      children: [
                        spanText(),
                        Spacer(),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Forget Password",
                                style: styLe(Get.width * .08, Colors.white,
                                    FontWeight.w600),
                              ),
                              Text(
                                "Train and live the new experience of \nexercising",
                                style: styLe(
                                    Get.width * .035,
                                    Colors.white.withOpacity(0.6),
                                    FontWeight.w300),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  textField("Email"),
                  SizedBox(height: Get.height * .05),
                  textbutton(
                    () {},
                    15,
                    kFirstColor,
                    null,
                    "Submit",
                  ),
                  textbutton(
                    () => Get.back(),
                    15,
                    Colors.transparent,
                    Border.all(width: 2, color: kFirstColor),
                    "Cancel",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
