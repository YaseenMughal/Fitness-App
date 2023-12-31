import 'package:fitness_app/screens/welcome_screen.dart';
import 'package:fitness_app/utils/button_utils.dart';
import 'package:fitness_app/utils/color_utils.dart';
import 'package:fitness_app/utils/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarBrightness: Brightness.dark));
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: "Mughal Workout App",
        themeMode: ThemeMode.dark,
        theme: ThemeData.dark().copyWith(
          primaryColor: Colors.blue,
          hintColor: Colors.white,
          textTheme: const TextTheme(titleMedium: TextStyle(color: Colors.white)),
        ),
        debugShowCheckedModeBanner: false,
        defaultTransition: Transition.cupertino,
        opaqueRoute: Get.isOpaqueRouteDefault,
        transitionDuration: const Duration(milliseconds: 230),
        home: WelcomeView());
  }
}
