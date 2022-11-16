import 'package:fashion_hub/componets/container.dart';
import 'package:fashion_hub/componets/dropdown.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

import '../../../componets/appbar.dart';
import '../../../componets/bottom_navigation_bar.dart';
import '../../../componets/text.dart';
import '../../../componets/toast.dart';
import '../../../data/app_colors.dart';
import '../../../data/appdata.dart';
import '../home_screen.dart';

int filterindex = 0;

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  RangeValues _value = const RangeValues(0,1000);
  int startval = 0;
  int endval = 1000;
  int sizetap = 0;
  var closecount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Custom_AppBar(
                text: "Filter",
                iconButton: IconButton(
                    onPressed: deletetoastShow,
                    splashRadius: 20,
                    icon: Icon(
                      FluentIcons.delete_12_regular,
                      color: AppColors.secondaryColor.withOpacity(0.6),
                      size: 28,
                    )),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      /// price
                      CommonNormalText(
                        text: "Price",
                        color: AppColors.greyColor,
                        size: 15,
                        fontfamily: 'PopinsRegular',
                      ),
                      RangeSlider(
                          inactiveColor: AppColors.greyColor.withOpacity(0.5),
                          activeColor: Colors.amber,
                          max: 5000,
                          values: _value,
                          labels: RangeLabels(
                            _value.start.round().toString(),
                            _value.end.round().toString(),
                          ),
                          onChanged: (values) {
                            setState(() {
                              _value = values;
                              startval = _value.start.toInt();
                              endval = _value.end.toInt();
                            });
                          }),
                      const SizedBox(height: 10,),
                      /// price container
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CommonContainer(
                            height: 50,
                            width: MediaQuery.of(context).size.width * 0.45,
                            color: AppColors.whiteColor,
                            customRadius: true,
                            customborderRadius: BorderRadius.horizontal(left: Radius.circular(10)),
                            border: Border.all(color: Colors.grey.withOpacity(0.8),width: 0.5),
                            child: Center(
                              child: CommonNormalText(
                                text: "\$$startval",
                                color: AppColors.greyColor,
                                size: 15,
                                fontfamily: 'PopinsRegular',
                              ),
                            ),
                          ),
                          CommonContainer(
                            height: 50,
                            width: MediaQuery.of(context).size.width * 0.45,
                            customRadius: true,
                            customborderRadius: BorderRadius.horizontal(right: Radius.circular(10)),
                            color: AppColors.whiteColor,
                            border: Border.all(color: Colors.grey.withOpacity(0.8),width: 0.5),
                            child: Center(
                              child: CommonNormalText(
                                text: "\$$endval",
                                color: AppColors.greyColor,
                                size: 15,
                                fontfamily: 'PopinsRegular',
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25,),

                      /// Category
                      CommonNormalText(
                        text: "Category",
                        color: AppColors.greyColor,
                        size: 15,
                        fontfamily: 'PopinsRegular',
                      ),
                      const SizedBox(height: 10,),
                        CommonContainer(
                          color: AppColors.whiteColor,
                          height: 40,
                          border: Border.all(color: AppColors.greyColor.withOpacity(0.5),width: 0.5),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: CategoryDropDown(),
                          ),
                        ),
                      const SizedBox(height: 25,),

                      /// brand
                      CommonNormalText(
                        text: "Brand",
                        color: AppColors.greyColor,
                        size: 15,
                        fontfamily: 'PopinsRegular',
                      ),
                      const SizedBox(height: 10,),
                      CommonContainer(
                        color: AppColors.whiteColor,
                        height: 40,
                        border: Border.all(color: AppColors.greyColor.withOpacity(0.5),width: 0.5),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: BrandDropDown(),
                        ),
                      ),
                      const SizedBox(height: 25,),

                      /// colors
                      CommonNormalText(
                        text: "Colors",
                        color: AppColors.greyColor,
                        size: 15,
                        fontfamily: 'PopinsRegular',
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                            7,
                                (index) => Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    usertap = index;
                                  });
                                },
                                child: CommonContainer(
                                  height: 40,
                                  width: 40,
                                  color: Colors.white,
                                  border: Border.all(
                                      color: index == usertap
                                          ? AppColors.orangeColor
                                          : Colors.white
                                          .withOpacity(0.5),
                                      width: 2),
                                  customRadius: true,
                                  customborderRadius: BorderRadius.circular(50),
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundColor: colorlist[index],
                                  ),
                                ),
                              ),
                            )),
                      ),
                      const SizedBox(height: 25,),

                      /// Size
                      CommonNormalText(
                        text: "Size",
                        color: AppColors.greyColor,
                        size: 15,
                        fontfamily: 'PopinsRegular',
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                            6,
                                (index) => Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    sizetap = index;
                                  });
                                },
                                child: CommonContainer(
                                    height: 48,
                                    width: 48,
                                    color: index == sizetap
                                        ? AppColors.thirdColor :Colors.transparent,
                                    border: Border.all(
                                        color: index == sizetap
                                            ? AppColors.thirdColor
                                            : AppColors.greyColor
                                            .withOpacity(0.5),
                                        width: 1),
                                    child: Center(
                                        child: CommonLargeText(
                                          text: productSize[index],
                                          color: index == sizetap
                                              ? AppColors.whiteColor
                                              : AppColors.greyColor
                                              .withOpacity(0.5),
                                          size: 15,
                                          fontfamily: 'PopinsRegular',
                                        ))),
                              ),
                            )),
                      ),
                      const SizedBox(height: 25,),

                      /// Sorted by
                      CommonNormalText(
                        text: "Sorted by",
                        color: AppColors.greyColor,
                        size: 15,
                        fontfamily: 'PopinsRegular',
                      ),
                      const SizedBox(height: 10,),
                      CommonContainer(
                        color: AppColors.whiteColor,
                        height: 40,
                        border: Border.all(color: AppColors.greyColor.withOpacity(0.5),width: 0.5),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: SortDropDown(),
                        ),
                      ),
                      const SizedBox(height: 25,),

                      /// Results
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          child: GestureDetector(
                            onTap: filtertoastShow,
                            child: CommonContainer(
                              height: 50,
                              width: MediaQuery.of(context).size.width *0.9,
                              color: AppColors.primaryColor,
                              child: Center(
                                  child: CommonLargeText(
                                    text: "Results(2501)",
                                    color: AppColors.whiteColor,
                                    fontfamily: 'PopinsRegular',
                                    size: 16,
                                  )),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 25,),
                    ]),
              ),
            ],
          ),
        ));
  }
}
