import 'package:bluestackapp/foundation/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'feature/landing/landing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline6: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.white,
            letterSpacing: 1.2,
          ),
          headline5: TextStyle(
            fontSize: 18.5,
            fontWeight: FontWeight.w700,
            color: AppColor.darkColor,
          ),
          headline4: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.w700,
            color: AppColor.darkColor,
          ),
          subtitle1: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w700,
            color: AppColor.blueColor,
          ),
        ),
      ),
      home: const LandingPage(),
    );
  }
}
