import 'package:fitness_app/utils/button_utils.dart';
import 'package:fitness_app/utils/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/color_utils.dart';

class TryNowScreen extends StatefulWidget {
  const TryNowScreen({Key? key}) : super(key: key);

  @override
  State<TryNowScreen> createState() => _TryNowScreenState();
}

class _TryNowScreenState extends State<TryNowScreen> {
  // Method to update the selected training option
  void updateSelectedOption(int option) {
    setState(() {
      selectedOption = option;
    });
  }

  int selectedOption = -1; // Default to no selected option

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/black/16.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Container(
            height: Get.height,
            width: double.infinity,
            color: kThirdColor.withOpacity(0.5),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
              child: Column(
                children: [
                  spanText(),
                  Spacer(),
                  bottomText(
                    "About You",
                    "We want to know more about you, follow the next\nstep to complete the information.",
                  ),
                  SizedBox(height: Get.height * .02),
                  // Training Options
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      trainingOptionBox(
                        "I'm\nBeginner",
                        "I have trained\nseveral times.",
                        () => updateSelectedOption(0),
                        selectedOption == 0,
                      ),
                      SizedBox(width: Get.width * .03),
                      trainingOptionBox(
                        "I'm\nExpert",
                        "I have trained\nmore times.",
                        () => updateSelectedOption(1),
                        selectedOption == 1,
                      ),
                    ],
                  ),
                  SizedBox(height: Get.height * .04),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: Text(
                            "Back",
                            style: styLe(15, Colors.grey, FontWeight.w400),
                          )),
                      Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                            color: kFirstColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text("Next",
                              style: styLe(16, Colors.white, FontWeight.w400)),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
