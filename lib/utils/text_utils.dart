import 'package:fitness_app/utils/button_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'color_utils.dart';

Widget bottomText(String title, String subtitle) {
  Color titleColor = Colors.white;
  Color subtitleColor = Colors.grey;
  return Align(
    alignment: Alignment.bottomLeft,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: styLe(
            Get.width * .09,
            titleColor,
            FontWeight.w600,
          ),
        ),
        Text(subtitle, style: styLe(Get.width * .036, subtitleColor, FontWeight.w300)),
      ],
    ),
  );
}

spanText() {
  return RichText(
    text: const TextSpan(
      text: 'HARD\t',
      style: TextStyle(fontFamily: "Poppin", fontSize: 30, letterSpacing: 4, fontWeight: FontWeight.bold),
      children: <TextSpan>[
        TextSpan(
          text: 'ELEMENT',
          style: TextStyle(fontFamily: "Poppin", color: kFirstColor, fontSize: 21, letterSpacing: 1, fontWeight: FontWeight.w400),
        ),
      ],
    ),
  );
}

spanbottomtxt(double size, txt1, txt2) {
  return RichText(
    text: TextSpan(
      text: '$txt1\t',
      style: styLe(size, kFirstColor, FontWeight.bold),
      children: <TextSpan>[
        TextSpan(
          text: ' $txt2',
          style: styLe(size, Colors.white, FontWeight.bold),
        ),
      ],
    ),
  );
}

textField(String text, TextEditingController controller) {
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      hintText: text,
      hintStyle: TextStyle(color: Colors.grey),
    ),
  );
}

searchField(TextEditingController controller) {
  return TextField(
    style: styLe(13, Colors.grey, FontWeight.w400),
    controller: controller,
    decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
        hintText: "Search Workout..",
        hintStyle: TextStyle(color: Colors.white, letterSpacing: 1),
        fillColor: kSecondColor,
        filled: true,
        suffixIcon: Icon(
          Icons.search,
          color: Colors.white,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          borderSide: BorderSide(width: 2, color: kThirdColor),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          borderSide: BorderSide(width: 0.1, color: Color.fromRGBO(130, 129, 129, 1)),
        )),
  );
}

styLe(double fontsize, var color, var fontweight) {
  return TextStyle(
    fontSize: fontsize,
    color: color,
    fontFamily: "Poppin",
    fontWeight: fontweight,
  );
}

styletxt() {
  return styLe(12, Colors.grey[300], FontWeight.w300);
}

backgroundImage(image) {
  return Container(
    height: Get.height * .5,
    width: Get.width,
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
    ),
  );
}

privacyTxt() {
  return AgreementScreen(
    text: "Privacy Policy",
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Privacy Policy", style: styLe(14, Colors.white, FontWeight.w500)),
          SizedBox(height: 10),
          Text(
              "Coding Your Life built the Workout app as a Freemium app and an Ad Supported app. This SERVICE is provided by Coding Your Life at no cost and is intended for use as is.",
              style: styletxt(),
              softWrap: true),
          SizedBox(height: 10),
          Text(
              "This page is used to inform visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service.",
              style: styletxt(),
              softWrap: true),
          SizedBox(height: 10),
          Text(
              "If you choose to use our Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that we collect is used for providing and improving the Service. We will not use or share your information with anyone except as described in this Privacy Policy.",
              style: styletxt(),
              softWrap: true),
          SizedBox(height: 10),
          Text(
              "The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at Workout unless otherwise defined in this Privacy Policy.",
              style: styletxt(),
              softWrap: true),
          SizedBox(height: 15),
          Text("Information Collection and Use", style: styLe(14, Colors.white, FontWeight.w500)),
          SizedBox(height: 10),
          Text(
              "For a better experience, while using our Service, we may require you to provide us with certain personally identifiable information, including but not limited to Name, Email, Phone Number, Date of Birth, Address, Photos, Body Height, Body Weight, Size of Clothes, Size of Pants, Size of Shoes, Skill, Experience, and Hobby. Theinformation that we request will be retained by us and used as described in this privacy policy.",
              style: styletxt(),
              softWrap: true),
          SizedBox(height: 10),
          Text("The app does use third party services that may collect information used to identify you.", style: styletxt(), softWrap: true),
          SizedBox(height: 10),
          Text("Link to privacy policy of third party service providers used by the app.", style: styletxt(), softWrap: true),
          SizedBox(height: 5),
          Text("   • Google Play Services\n   • Admob\n   • Google Analytics for Firebase\n   • Firebase Crashl ics\n   • Facebook\n   • AdColon\n",
              style: styLe(12, kFirstColor, FontWeight.w400), softWrap: true),
          SizedBox(height: 15),
          Text("Log Data", style: styLe(14, Colors.white, FontWeight.w500)),
          SizedBox(height: 10),
          Text(
              "We want to inform you that whenever you use our Service, in a case of an error in the app we collect data and information (through third party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol ('IP') address, device name, operating system version, the configuration of the app when utilizing our Service, the time and date of your use of the Service, and other statistics.",
              style: styletxt(),
              softWrap: true),
          SizedBox(height: 15),
          Text("Cookies", style: styLe(14, Colors.white, FontWeight.w500)),
          SizedBox(height: 10),
          Text(
              "Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device's internal memory.",
              style: styletxt(),
              softWrap: true),
          SizedBox(height: 10),
          Text(
              "This Service does not use these 'cookies' explicitly. However, the app may use third party code and libraries that use 'cookies' to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.",
              style: styletxt(),
              softWrap: true),
          SizedBox(height: 15),
          Text("Service Providers", style: styLe(14, Colors.white, FontWeight.w500)),
          SizedBox(height: 10),
          Text("We may employ third-party companies and individuals due to the following reasons:", style: styletxt(), softWrap: true),
          Text(
              "   • To facilitate our Service\n   • To provide the Service on our behalf\n   • To perform Service-related services\n   • To assist us in analyzing how our Service is used",
              style: styLe(12, Colors.white, FontWeight.w400)),
          SizedBox(height: 10),
          Text(
              "We want to inform users of this Service that these third parties have access to your Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.",
              style: styletxt(),
              softWrap: true),
          SizedBox(height: 15),
          Text("Security", style: styLe(14, Colors.white, FontWeight.w500)),
          SizedBox(height: 10),
          Text(
              "We value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and we cannot guarantee its absolute security.",
              style: styletxt(),
              softWrap: true),
          SizedBox(height: 15),
          Text("Links to Other Sites", style: styLe(14, Colors.white, FontWeight.w500)),
          SizedBox(height: 10),
          Text(
              "This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by us. Therefore, we strongly advise you to review the Privacy Policy of these websites. We have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.",
              style: styletxt(),
              softWrap: true),
          SizedBox(height: 15),
          Text("Children's Privacy", style: styLe(14, Colors.white, FontWeight.w500)),
          SizedBox(height: 10),
          Text(
              "These Services do not address anyone under the age of 13. We do not knowingly collect personally identifiable information from children under 13. In the case we discover that a child under 13 has provided us with personal information, we immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact us so that we will be able to do necessary actions.",
              style: styletxt(),
              softWrap: true),
          SizedBox(height: 15),
          Text("Changes to This Privacy Policy", style: styLe(14, Colors.white, FontWeight.w500)),
          SizedBox(height: 10),
          Text(
              "We may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. We will notify you of any changes by posting the new Privacy Policy on this page.",
              style: styletxt(),
              softWrap: true),
          SizedBox(height: 10),
          Text("This policy is effective as of 2027-12-17", style: styletxt(), softWrap: true),
          SizedBox(height: 15),
          Text("Contact Us", style: styLe(14, Colors.white, FontWeight.w500)),
          SizedBox(height: 10),
          RichText(
            text: TextSpan(
              text: 'If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us at:\n',
              style: styletxt(),
              children: <TextSpan>[
                TextSpan(
                  text: 'dev.yaseenismail@gmail.com',
                  style: styLe(12, kFirstColor, FontWeight.w400),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          RichText(
            text: TextSpan(
              text: 'This privacy policy page was created at\n',
              style: styletxt(),
              children: <TextSpan>[
                TextSpan(
                  text: 'rivacypolicytemplate.net\t',
                  style: styLe(12, kFirstColor, FontWeight.w400),
                ),
                TextSpan(
                  text: "and modified/generated\n by",
                  style: styletxt(),
                ),
                TextSpan(
                  text: ' App Privacy Policy Generator',
                  style: styLe(12, kFirstColor, FontWeight.w400),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
