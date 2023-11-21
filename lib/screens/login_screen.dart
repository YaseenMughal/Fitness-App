import 'package:fitness_app/utils/button_utils.dart';
import 'package:fitness_app/utils/color_utils.dart';
import 'package:fitness_app/utils/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'forget_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                      image: AssetImage("assets/images/black/12.jpg"),
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
                              "Sign In",
                              style: styLe(Get.width * .09, Colors.white,
                                  FontWeight.w600),
                            ),
                            Text(
                              "Train and live the new experience of \nexercising",
                              style: styLe(Get.width * .036, Colors.white,
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
                const TextField(
                  decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder()),
                ),
                SizedBox(height: Get.height * .01),
                const TextField(
                  decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder()),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: () => Get.to(ForgetScreen()),
                    child: Text(
                      "Forget your passwod?",
                      style: styLe(12, Colors.white, FontWeight.w300),
                    ),
                  ),
                ),
                SizedBox(height: Get.height * .02),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: kFirstColor,
                    ),
                    height: 50,
                    width: Get.width * 0.7,
                    child: const Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppin",
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.transparent,
                      border: Border.all(width: 2, color: kFirstColor),
                    ),
                    height: 50,
                    width: Get.width * 0.7,
                    child: const Center(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppin",
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}