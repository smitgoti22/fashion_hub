import 'dart:async';

import 'package:fashion_hub/componets/container.dart';
import 'package:fashion_hub/componets/text.dart';
import 'package:fashion_hub/data/app_colors.dart';
import 'package:fashion_hub/data/appdata.dart';
import 'package:fashion_hub/screens/verification/take_phone_number.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  PageController pageController = PageController(initialPage: 0);
  var trackindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            /// welcome image, title, description
            Expanded(
              child: PageView.builder(
                itemCount: welcomedata.length,
                controller: pageController,
                physics: const BouncingScrollPhysics(),
                onPageChanged: (value) {
                  pageController = PageController(initialPage: value);
                  setState(() {
                    trackindex = value;
                  });
                  if (trackindex == welcomedata.length - 1) {
                    Timer(Duration(milliseconds: 500), () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GetMobNum(),
                          ));
                    });
                  }
                },
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.20,
                      ),
                      SizedBox(
                          height: 215,
                          child: Image.asset(
                            welcomedata[index]['image'],
                            fit: BoxFit.cover,
                          )),
                      const SizedBox(
                        height: 100,
                      ),
                      CommonLargeText(
                        text: welcomedata[index]['title'],
                        color: AppColors.purpleColor,
                        letterspacing: 0.5,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 21),
                        child: CommonNormalText(
                          text: welcomedata[index]['desc'],
                          color: AppColors.lightgreyColor,
                          size: 15,
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
            const SizedBox(height: 50),

            /// Dynamic dots
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  welcomedata.length,
                  (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: CircleAvatar(
                          radius: index == trackindex ? 5 : 3,
                          backgroundColor: index == trackindex
                              ? AppColors.primaryColor
                              : AppColors.secondaryColor,
                        ),
                      )),
            ),
            const SizedBox(
              height: 45,
            ),

            /// get started button
            GestureDetector(
              onTap: () {
                if (trackindex == welcomedata.length - 1) {
                  Timer(Duration(milliseconds: 500), () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GetMobNum(),
                        ));
                  });
                }
                setState(
                  () {
                    pageController.nextPage(
                        duration: Duration(milliseconds: 100),
                        curve: Curves.bounceIn);
                  },
                );
              },
              child: CommonContainer(
                color: AppColors.primaryColor,
                margin: const EdgeInsets.only(left: 20, right: 20, bottom: 25),
                child: Center(
                    child: CommonNormalText(
                  text: "Get Started!",
                  color: AppColors.whiteColor,
                  size: 16,
                )),
              ),
            )
          ],
        ));
  }
}
