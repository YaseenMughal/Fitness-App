import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/button_utils.dart';
import '../utils/color_utils.dart';
import '../utils/text_utils.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
                      image: AssetImage("assets/images/black/4.jpg"),
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
                              "Sign Up",
                              style: styLe(Get.width * .09, Colors.white,
                                  FontWeight.w600),
                            ),
                            Text(
                              "Train and live the new experience of \nexercising",
                              style: styLe(
                                  Get.width * .036,
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
                textField("Name"),
                SizedBox(height: Get.height * .01),
                textField("Email"),
                SizedBox(height: Get.height * .01),
                textField("Phone"),
                SizedBox(height: Get.height * .01),
                textField("Password"),
                SizedBox(height: Get.height * .01),
                textField("Confirm Password"),
                SizedBox(height: Get.height * .02),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "By signing up, I agree to the aqua workout\nUser Agreement & Privacy Policy",
                    style: styLe(12, Colors.white, FontWeight.w300),
                  ),
                ),
                SizedBox(height: Get.height * .03),
                textbutton(
                  () {},
                  15,
                  kFirstColor,
                  null,
                  "Register",
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
      )),
    );
  }
}
