import 'package:fitness_app/utils/color_utils.dart';
import 'package:fitness_app/utils/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/button_utils.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThirdColor,
      body: SingleChildScrollView(
          child: Column(
        children: [
          Stack(
            children: [
              backgroundImage("assets/images/black/3.jpg"),
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
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 25.0, bottom: 15.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          spanbottomtxt(22, "Hey,", " Mughal"),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: const Color(0xff7c94b6),
                              image: const DecorationImage(
                                image: AssetImage("assets/images/black/9.jpg"),
                                fit: BoxFit.cover,
                              ),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: kFirstColor,
                                width: 1.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            spanbottomtxt(25, "Find", "your workout"),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 20.0),
          //   child: Column(
          //     children: [
          //       textField("Email", tfcemail),
          //       SizedBox(height: Get.height * .01),
          //       textField("Password", tfcpassword),
          //       Align(
          //         alignment: Alignment.bottomRight,
          //         child: TextButton(
          //           onPressed: () => Get.to(ForgetScreen(controller: tfcemail)),
          //           child: Text(
          //             "Forget your passwod?",
          //             style: styLe(12, Colors.white, FontWeight.w300),
          //           ),
          //         ),
          //       ),
          //       SizedBox(height: Get.height * .02),
          //       textbutton(
          //         () {},
          //         15,
          //         kFirstColor,
          //         null,
          //         "Login",
          //       ),
          //       textbutton(
          //         () => Get.to(SignupScreen()),
          //         15,
          //         Colors.transparent,
          //         Border.all(width: 2, color: kFirstColor),
          //         "Sign Up",
          //       ),
          //     ],
          //   ),
          // )
        ],
      )),
    );
  }
}
