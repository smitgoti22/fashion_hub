import 'dart:async';
import 'package:fashion_hub/screens/welcome/welcome.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 7), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => WelcomeScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/Background.png"), fit: BoxFit.fill)),
      child: Center(
        child: SizedBox(
            height: 135,
            child: Image.asset(
              "assets/spalsh_logo.png",
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
