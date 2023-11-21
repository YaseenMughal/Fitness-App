import 'package:fitness_app/screens/login_screen.dart';
import 'package:fitness_app/screens/trynow_screen.dart';
import 'package:fitness_app/utils/button_utils.dart';
import 'package:fitness_app/utils/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/color_utils.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/black/9.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: Get.height,
            width: Get.width,
            color: kThirdColor.withOpacity(0.3),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  spanText(),
                  Spacer(),
                  bottomText("Welcome",
                      "Train and live the new experience of\nexercising at home"),
                  SizedBox(height: Get.height * .02),
                  textbutton(
                    () => Get.to(TryNowScreen()),
                    25,
                    kFirstColor,
                    null,
                    "Try Now",
                  ),
                  textbutton(
                    () => Get.to(LoginScreen()),
                    25,
                    Colors.transparent,
                    Border.all(width: 2, color: Colors.white),
                    "Login",
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
