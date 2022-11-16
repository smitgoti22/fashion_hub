import 'package:fashion_hub/componets/container.dart';
import 'package:fashion_hub/componets/text.dart';
import 'package:fashion_hub/data/app_colors.dart';
import 'package:fashion_hub/data/appdata.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

int usertap = 0;

class AppBottomNavigation extends StatefulWidget {
  const AppBottomNavigation({Key? key}) : super(key: key);

  @override
  State<AppBottomNavigation> createState() => _AppBottomNavigationState();
}

class _AppBottomNavigationState extends State<AppBottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        /// bar buttons
        CommonContainer(
          height: 60,
          width: double.infinity,
          color: Colors.white,
          customRadius: true,
          // padding: const EdgeInsets.symmetric(horizontal: 5),
          customborderRadius: BorderRadius.vertical(top: Radius.circular(15)),
          child: Row(
              children: List.generate(
                  bottomdata.length,
                  (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                        child: SizedBox(
                          height: double.infinity,
                          width: 75,
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                usertap = index;
                              });
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => bottomscreens[index],
                                  ));
                            },
                            padding: EdgeInsets.zero,
                            splashColor:
                                AppColors.secondaryColor.withOpacity(0.2),
                            color: Colors.white,
                            icon: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                /// icon
                                SizedBox(
                                  height: 22,
                                  width: 22,
                                  child: Image.asset(
                                      usertap == index
                                          ? "${bottomdata[index]['activeicon']}"
                                          : "${bottomdata[index]['inactiveicon']}",
                                      fit: BoxFit.contain),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),

                                /// icon name
                                CommonNormalText(
                                    text: bottomdata[index]['screen'],
                                    color: usertap == index
                                        ? AppColors.primaryColor
                                        : AppColors.greyColor,
                                    size: 12,
                                    fontfamily: usertap == index
                                        ? 'PopinsBold'
                                        : 'PopinsRegular'),
                              ],
                            ),
                          ),
                        ),
                      ))),
        ),

        /// cart buttun
        Positioned(
            right: 0,
            top: -15,
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => bottomscreens[4],
                      ));
                },
                child: SizedBox(
                  height: 55,
                  width: 90,
                  child:
                      Image.asset("assets/Group 60.png", fit: BoxFit.contain),
                )))
      ],
    );
  }
}
