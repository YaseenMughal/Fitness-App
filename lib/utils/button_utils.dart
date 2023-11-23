import 'package:fitness_app/utils/color_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'text_utils.dart';

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

class ProfileButton extends StatefulWidget {
  final String name;
  final String email;
  final String phone;

  ProfileButton({
    Key? key,
    required this.name,
    required this.email,
    required this.phone,
  }) : super(key: key);

  @override
  State<ProfileButton> createState() => _ProfileButtonState();
}

class _ProfileButtonState extends State<ProfileButton> {
  List<Icon> userLeading1 = [
    const Icon(Icons.mail_outline),
    const Icon(Icons.phone_outlined),
    const Icon(Icons.calendar_month_outlined)
  ];

  List<String> userTitle1 = [
    "Email",
    "Phone",
    "Birth of Date",
  ];

  List<Icon> userLeading2 = [
    const Icon(Icons.wallet_giftcard),
    const Icon(Icons.person_pin_outlined),
    const Icon(Icons.settings_outlined)
  ];

  List<String> userTitle2 = [
    "Invite Friends",
    "User Agreements",
    "Settings",
  ];

  late DateTime selectedDate;

  @override
  void initState() {
    super.initState();
    selectedDate = DateTime
        .now(); // Initial value, you can set it to a default or current date
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThirdColor,
      body: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                // top box
                Container(
                  height: Get.height * .15,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: kSecondColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(18),
                          bottomRight: Radius.circular(18))),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
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
                        ),
                        Text(
                          widget.name,
                          style: styLe(20, Colors.white, FontWeight.w500),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Colors.white,
                              width: 1.0,
                            ),
                          ),
                          child: Center(
                            child: IconButton(
                                onPressed: () {
                                  Get.defaultDialog(
                                      title: "Delete Chat",
                                      middleText:
                                          "Are you sure to delete the chat",
                                      textConfirm: "Yes",
                                      titlePadding:
                                          const EdgeInsets.only(top: 20),
                                      contentPadding: const EdgeInsets.all(20),
                                      textCancel: "No");
                                },
                                icon: const Icon(Icons.edit_document)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // center box
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 5, left: 20, right: 20),
                  child: Container(
                    height: Get.height * .3,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: kSecondColor,
                        borderRadius: BorderRadius.circular(18)),
                    child: ListView.builder(
                      itemCount: userTitle1.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(userTitle1[index],
                              style: styLe(14, Colors.white, FontWeight.w400)),
                          leading: userLeading1[index],
                          subtitle: index == 0
                              ? Text(
                                  widget.email,
                                  style:
                                      styLe(12, Colors.grey, FontWeight.w300),
                                )
                              : index == 1
                                  ? Text(
                                      widget.phone,
                                      style: styLe(
                                          12, Colors.grey, FontWeight.w300),
                                    )
                                  : InkWell(
                                      onTap: () => _selectDate(context),
                                      // ignore: unnecessary_null_comparison
                                      child: Text(
                                        // ignore: unnecessary_null_comparison
                                        selectedDate == null
                                            ? "Set to Date"
                                            : "Set date: ${DateFormat('yyyy-MM-dd').format(selectedDate)}",
                                        style: styLe(
                                            12, Colors.grey, FontWeight.w300),
                                      ),
                                    ),
                        );
                      },
                    ),
                  ),
                ),
                // bottom box
                Padding(
                  padding: const EdgeInsets.only(
                      top: 5, bottom: 20, left: 20, right: 20),
                  child: Container(
                    height: Get.height * .3,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: kSecondColor,
                        borderRadius: BorderRadius.circular(18)),
                    child: ListView.builder(
                      itemCount: userTitle2.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(userTitle2[index]),
                          leading: userLeading2[index],
                          trailing: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_forward_ios)),
                        );
                      },
                    ),
                  ),
                ),
                // last box
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    height: Get.height * .08,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.redAccent),
                    child: TextButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.logout_outlined,
                            color: Colors.white, size: 30),
                        label: Text(
                          "Sign Out",
                          style: styLe(18, Colors.white, FontWeight.w400),
                        )),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
