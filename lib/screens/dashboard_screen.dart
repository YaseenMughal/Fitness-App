import 'package:fitness_app/utils/button_utils.dart';
import 'package:fitness_app/utils/color_utils.dart';
import 'package:fitness_app/utils/controller.dart';
import 'package:fitness_app/utils/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardScreen extends StatefulWidget {
  DashboardScreen({
    super.key,
  });

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final UserController userController = Get.find();
  TextEditingController tfcsearch = TextEditingController();
  List<String> workoutName = [
    "Popular",
    "Hard Workout",
    "Full Body",
    "Cross-fit"
  ];

  int selectedTab = 0;

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
                          spanbottomtxt(21, "Hey,", userController.name),
                          InkWell(
                            onTap: () {
                              Get.to(
                                () => ProfileButton(
                                  name: userController.name.value,
                                  email: userController.email.value,
                                  phone: userController.phone.value,
                                ),
                              );
                            },
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xff7c94b6),
                                image: const DecorationImage(
                                  image:
                                      AssetImage("assets/images/black/9.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: kFirstColor,
                                  width: 1.0,
                                ),
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
                            spanbottomtxt(23, "Find", "your workout"),
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
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                searchField(tfcsearch),
                SizedBox(height: Get.height * .02),
                // tab List
                Container(
                  height: Get.height * .06,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: workoutName.length,
                    itemBuilder: (context, index) {
                      bool isSelected = index == selectedTab;
                      return Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              selectedTab = index;
                              print("Selected tab :- $selectedTab");
                            });
                          },
                          child: Container(
                            height: Get.height * .05,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(
                                color: isSelected
                                    ? kFirstColor
                                    : Colors.transparent,
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10.0),
                              child: Center(
                                child: Text(
                                  workoutName[index],
                                  style: styLe(
                                      15, Colors.grey[400], FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: Get.height * .015),
                Text(
                  "Popular Workout",
                  style: styLe(22, Colors.white, FontWeight.w700),
                ),
                SizedBox(height: Get.height * .02),
                // image List
                Container(
                  height: Get.height * .25,
                  width: double.infinity,
                  // color: Colors.grey,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: popularWorkout.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                        child: Container(
                          height: Get.height * .25,
                          width: Get.width * .4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: kThirdColor,
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                height: Get.height * .2,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset(
                                    popularWorkout[index]['productImage'],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(height: Get.height * .015),
                              Text(
                                popularWorkout[index]['name'],
                                style: styLe(14, Colors.grey, FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: Get.height * .015),
                Text(
                  "Basic Workout",
                  style: styLe(22, Colors.white, FontWeight.w700),
                ),
                SizedBox(height: Get.height * .02),
                // image List
                Container(
                  height: Get.height * .25,
                  width: double.infinity,
                  // color: Colors.grey,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: basicWorkout.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                        child: Container(
                          height: Get.height * .25,
                          width: Get.width * .4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: kThirdColor,
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                height: Get.height * .2,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset(
                                    basicWorkout[index]['productImage'],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(height: Get.height * .015),
                              Text(
                                basicWorkout[index]['name'],
                                overflow: TextOverflow.clip,
                                style: styLe(14, Colors.grey, FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }

  List<Map> popularWorkout = [
    {
      'name': 'Dribble Exercises',
      'productImage': 'assets/images/black/16.jpg',
    },
    {
      'name': 'Combine Exercises',
      'productImage': 'assets/images/black/12.jpg',
    },
    {
      'name': 'Push-Up Exercises',
      'productImage': 'assets/images/black/1.jpg',
    },
    {
      'name': 'Burble-Up Exercises',
      'productImage': 'assets/images/black/6.jpg'
    },
  ];
}

List<Map> basicWorkout = [
  {
    'name': 'Chain Exercises',
    'productImage': 'assets/images/black/7.jpg',
  },
  {
    'name': 'Rope Exercises',
    'productImage': 'assets/images/black/18.jpg',
  },
  {
    'name': 'Shoulder Exercises',
    'productImage': 'assets/images/black/8.jpg',
  },
  {
    'name': 'Abs Exercises',
    'productImage': 'assets/images/black/14.jpg',
  },
];
