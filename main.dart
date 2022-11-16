import 'package:fashion_hub/screens/Home/home_screen.dart';
import 'package:fashion_hub/screens/verification/otp_screen.dart';
import 'package:fashion_hub/screens/verification/take_phone_number.dart';
import 'package:fashion_hub/screens/welcome/splash_screen.dart';
import 'package:fashion_hub/screens/welcome/welcome.dart';
import 'package:flutter/material.dart';

import 'data/appdata.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: HomeScreen()
    );
  }
}
