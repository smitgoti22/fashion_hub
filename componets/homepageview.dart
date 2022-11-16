import 'dart:async';

import 'package:fashion_hub/componets/text.dart';
import 'package:flutter/material.dart';

import '../data/app_colors.dart';
import '../data/appdata.dart';
import 'container.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  int trackindex = 0;
  int curruntIndex = -1;
  PageController pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CommonContainer(
          height: 150,
          width: 350,
          color: Colors.black,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: PageView(
                controller: pageController,
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                onPageChanged: (value) {
                  setState(() {
                    pageController = PageController(initialPage: value);
                    trackindex = value;
                  });
                },
                children: List.generate(
                    snaphomeimage.length,
                    (index) => CommonContainer(
                      borderRadius: 0,
                          decorationImage: DecorationImage(
                              image: NetworkImage(
                                  "${snaphomeimage[index]['image']}"),
                              opacity: 0.8,
                              fit: BoxFit.cover),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CommonLargeText(
                                  text: snaphomeimage[index]['title'],
                                  color: AppColors.whiteColor,
                                  fontfamily: 'PopinsRegular',
                                ),
                                CommonNormalText(
                                  text: snaphomeimage[index]['subtitle'],
                                  color: AppColors.whiteColor,
                                  fontfamily: 'PopinsRegular',
                                ),
                              ],
                            ),
                          ),
                        ))),
          ),
        ),

        /// Dynamic dots
        Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                snaphomeimage.length,
                (index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: CircleAvatar(
                        radius: 3,
                        backgroundColor: index == trackindex
                            ? AppColors.thirdColor
                            : AppColors.fourthColor,
                      ),
                    )),
          ),
        ),
      ],
    );
  }
}
