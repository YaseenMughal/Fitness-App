import 'package:fitness_app/screens/dashboard_screen.dart';
import 'package:fitness_app/screens/signup_screen.dart';
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
  TextEditingController tfcemail = TextEditingController();
  TextEditingController tfcpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThirdColor,
      body: SingleChildScrollView(
          child: Column(
        children: [
          Stack(
            children: [
              backgroundImage("assets/images/black/12.jpg"),
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(begin: Alignment.bottomCenter, end: Alignment.topCenter, colors: [
                    kThirdColor,
                    Colors.transparent,
                  ]),
                ),
                height: Get.height * 0.55,
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
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
                              style: styLe(Get.width * .09, Colors.white, FontWeight.w600),
                            ),
                            Text(
                              "Train and live the new experience of \nexercising",
                              style: styLe(Get.width * .036, Colors.white, FontWeight.w300),
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
                textField("Email", tfcemail),
                SizedBox(height: Get.height * .01),
                textField("Password", tfcpassword),
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: () => Get.to(ForgetScreen(controller: tfcemail)),
                    child: Text(
                      "Forget your passwod?",
                      style: styLe(12, Colors.white, FontWeight.w300),
                    ),
                  ),
                ),
                SizedBox(height: Get.height * .02),
                textbutton(
                  () {
                    // Get.to(() => DashboardScreen());
                  },
                  15,
                  kFirstColor,
                  null,
                  "Login",
                ),
                textbutton(
                  () {
                    Get.to(() => SignupScreen());
                  },
                  15,
                  Colors.transparent,
                  Border.all(width: 2, color: kFirstColor),
                  "Sign Up",
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
