import 'package:fitness_app/screens/dashboard_screen.dart';
import 'package:fitness_app/utils/controller.dart';
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
  TextEditingController tfcname = TextEditingController();
  TextEditingController tfcemail = TextEditingController();
  TextEditingController tfcphone = TextEditingController();
  TextEditingController tfcpassword = TextEditingController();
  TextEditingController tfcconfirmpassword = TextEditingController();

  final UserController userController = Get.put(UserController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThirdColor,
      body: SingleChildScrollView(
          child: Column(
        children: [
          Stack(
            children: [
              backgroundImage("assets/images/black/4.jpg"),
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
                textField("Name", tfcname),
                SizedBox(height: Get.height * .01),
                textField("Email", tfcemail),
                SizedBox(height: Get.height * .01),
                textField("Phone", tfcphone),
                SizedBox(height: Get.height * .01),
                textField("Password", tfcpassword),
                SizedBox(height: Get.height * .01),
                textField("Confirm Password", tfcconfirmpassword),
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
                  () {
                    userController.updateUser(
                      name: tfcname.text,
                      email: tfcemail.text,
                      phone: tfcphone.text,
                    );
                    Get.to(() => DashboardScreen());
                  },
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
