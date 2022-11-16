import 'package:fashion_hub/componets/appbar.dart';
import 'package:fashion_hub/componets/dropdown.dart';
import 'package:fashion_hub/data/appdata.dart';
import 'package:fashion_hub/screens/Home/Categories/catagoty_item_screen.dart';
import 'package:fashion_hub/screens/Home/home_screen.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import '../../../componets/bottom_navigation_bar.dart';
import '../../../componets/container.dart';
import '../../../componets/text.dart';
import '../../../data/app_colors.dart';

class CatagouriesScreen extends StatefulWidget {
  const CatagouriesScreen({Key? key}) : super(key: key);

  @override
  State<CatagouriesScreen> createState() => _CatagouriesScreenState();
}

class _CatagouriesScreenState extends State<CatagouriesScreen> {
  int selected = 0;
  int closecount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: const AppBottomNavigation(),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Custom_AppBar(
                text: "Categories",
                leading: false,
                iconButton: IconButton(
                    onPressed: () {},
                    splashRadius: 10,
                    icon: Icon(
                      Icons.add,
                      color: Colors.transparent,
                    )),
              ),
              const SizedBox(
                height: 45,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: List.generate(
                      cataloguedata.length,
                      (index) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selected = index;
                                    currunt_index = index;
                                    closecount++;

                                    if (closecount % 2 == 0) {
                                      closecount = 2;
                                    }

                                    if (closecount % 2 != 0) {
                                      closecount = 1;
                                    }
                                  });
                                },
                                child: CommonContainer(
                                  height: 100,
                                  width: double.infinity,
                                  customRadius: true,
                                  customborderRadius:
                                      const BorderRadius.horizontal(
                                          left: Radius.circular(15)),
                                  color: AppColors.thirdColor.withOpacity(0.3),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  /// title
                                                  CommonLargeText(
                                                    text: cataloguedata[index]
                                                        ['title'],
                                                    color: AppColors.blackColor,
                                                    size: 16,
                                                    fontfamily: 'PopinsBold',
                                                  ),
                                                  const SizedBox(
                                                    width: 5,
                                                  ),

                                                  RotatedBox(
                                                    quarterTurns:
                                                        selected == index &&
                                                                closecount == 1
                                                            ? 1
                                                            : 3,
                                                    child: Icon(
                                                        Icons.chevron_right,
                                                        color: AppColors
                                                            .greyColor
                                                            .withOpacity(0.7)),
                                                  ),
                                                ],
                                              ),

                                              /// sub title
                                              CommonNormalText(
                                                text: cataloguedata[index]
                                                    ['subtitle'],
                                                color: AppColors.blackColor,
                                                size: 10.5,
                                                fontfamily: 'PopinsRegular',
                                              ),
                                            ],
                                          ),
                                        ),

                                        /// images
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: SizedBox(
                                              height: 100,
                                              width: 170,
                                              child: Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Image.asset(
                                                      cataloguedata[index]
                                                          ['image'],
                                                      fit: BoxFit.cover)),
                                            ))
                                      ]),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              selected == index && closecount == 1
                                  ? const DropDownList()
                                  : const SizedBox(
                                      height: 0,
                                    ),
                            ],
                          )),
                    )),
              ),
            ],
          ),
        ));
  }
}
