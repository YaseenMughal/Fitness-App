import 'package:fitness_app/utils/color_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'text_utils.dart';

// Widget for Training Option Box
Widget trainingOptionBox(String title, String subtitle, VoidCallback onTap, bool isSelected) {
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
                  Text(subtitle, style: styLe(12, Colors.white, FontWeight.w300)),
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

  ProfileButton({Key? key, required this.name, required this.email, required this.phone}) : super(key: key);

  @override
  State<ProfileButton> createState() => _ProfileButtonState();
}

class _ProfileButtonState extends State<ProfileButton> {
  List<Icon> userLeading1 = [const Icon(Icons.mail_outline), const Icon(Icons.phone_outlined), const Icon(Icons.calendar_month_outlined)];

  List<String> userTitle1 = [
    "Email",
    "Phone",
    "Birth of Date",
  ];

  List<Icon> userLeading2 = [const Icon(Icons.wallet_giftcard), const Icon(Icons.person_pin_outlined), const Icon(Icons.settings_outlined)];

  List<String> userTitle2 = [
    "Invite Friends",
    "User Agreements",
    "Settings",
  ];

  late DateTime selectedDate;

  @override
  void initState() {
    super.initState();
    selectedDate = DateTime.now(); // Initial value, you can set it to a default or current date
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
                  height: Get.height * .12,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: kSecondColor, borderRadius: BorderRadius.only(bottomLeft: Radius.circular(18), bottomRight: Radius.circular(18))),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
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
                                      middleText: "Are you sure to delete the chat",
                                      textConfirm: "Yes",
                                      titlePadding: const EdgeInsets.only(top: 20),
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
                  padding: const EdgeInsets.only(top: 20, bottom: 5, left: 20, right: 20),
                  child: Container(
                    height: Get.height * .3,
                    width: double.infinity,
                    decoration: BoxDecoration(color: kSecondColor, borderRadius: BorderRadius.circular(18)),
                    child: ListView.builder(
                      itemCount: userTitle1.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(userTitle1[index], style: styLe(14, Colors.white, FontWeight.w400)),
                          leading: userLeading1[index],
                          subtitle: index == 0
                              ? Text(
                                  widget.email,
                                  style: styLe(12, Colors.grey, FontWeight.w300),
                                )
                              : index == 1
                                  ? Text(
                                      widget.phone,
                                      style: styLe(12, Colors.grey, FontWeight.w300),
                                    )
                                  : InkWell(
                                      onTap: () => _selectDate(context),
                                      // ignore: unnecessary_null_comparison
                                      child: Text(
                                        // ignore: unnecessary_null_comparison
                                        selectedDate == null ? "Set to Date" : "Set date: ${DateFormat('yyyy-MM-dd').format(selectedDate)}",
                                        style: styLe(12, Colors.grey, FontWeight.w300),
                                      ),
                                    ),
                        );
                      },
                    ),
                  ),
                ),
                // bottom box
                Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 20, left: 20, right: 20),
                  child: Container(
                    height: Get.height * .3,
                    width: double.infinity,
                    decoration: BoxDecoration(color: kSecondColor, borderRadius: BorderRadius.circular(18)),
                    child: ListView.builder(
                      itemCount: userTitle2.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                            title: Text(userTitle2[index]),
                            leading: userLeading2[index],
                            trailing: index == 0
                                ? IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
                                  )
                                : index == 1
                                    ? IconButton(
                                        onPressed: () {
                                          Get.to(() => AgreementScreen(
                                                text: "User Agreement",
                                                child: Column(
                                                  children: [
                                                    ListTile(
                                                        leading: const Icon(Icons.person_2_outlined),
                                                        title: Text("Privacy Policy"),
                                                        trailing: IconButton(
                                                            onPressed: () {
                                                              Get.to(() => privacyTxt());
                                                            },
                                                            icon: Icon(Icons.arrow_forward_ios, color: Colors.grey))),
                                                    Divider(),
                                                    ListTile(
                                                      leading: Icon(Icons.contact_page_outlined),
                                                      title: Text("Terms & Conditions"),
                                                      trailing: InkWell(
                                                          onTap: () {
                                                            Get.to(() => AgreementScreen(text: "Terms & Conditions", child: Text("skdhksdhids")));
                                                          },
                                                          child: Icon(Icons.arrow_forward_ios, color: Colors.grey)),
                                                    )
                                                  ],
                                                ),
                                              ));
                                        },
                                        icon: Icon(Icons.arrow_forward_ios, color: Colors.grey),
                                      )
                                    : index == 2
                                        ? IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.arrow_forward_ios, color: Colors.grey),
                                          )
                                        : null);
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
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.redAccent),
                    child: TextButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.logout_outlined, color: Colors.white, size: 30),
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

class AgreementScreen extends StatefulWidget {
  final String text;
  final Widget? child;
  const AgreementScreen({
    super.key,
    required this.text,
    required this.child,
  });

  @override
  State<AgreementScreen> createState() => _AgreementScreenState();
}

class _AgreementScreenState extends State<AgreementScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appbarBox(widget.text),
        backgroundColor: kThirdColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(18.0), color: kSecondColor),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: widget.child,
            ),
          ),
        ));
  }
}

appbarBox(String text) {
  return AppBar(
    title: Text(text, style: styLe(20, kFirstColor, FontWeight.w500)),
    centerTitle: true,
    toolbarHeight: 65,
    backgroundColor: kSecondColor,
    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25))),
    leading: InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(left: 12, top: 9.0, bottom: 9.0),
        child: Container(
          width: 60,
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
                  Get.back();
                },
                icon: const Icon(Icons.arrow_back_ios_new)),
          ),
        ),
      ),
    ),
  );
}
