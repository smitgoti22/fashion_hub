import 'package:fashion_hub/componets/text.dart';
import 'package:fashion_hub/data/appdata.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

import '../../componets/bottom_navigation_bar.dart';
import '../../data/app_colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const AppBottomNavigation(),
        body: Column(
          children: [
            /// profile
            SizedBox(
              height: 135,
              width: double.infinity,
              child: Image.asset("assets/profile.png", fit: BoxFit.cover),
            ),
            const SizedBox(
              height: 30,
            ),

            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 15),
              child: Column(children: [
                /// shipping address
                Container(
                    height: 45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: AppColors.greyColor.withOpacity(0.3),
                              blurRadius: 1,
                              spreadRadius: 0.5,
                              offset: Offset(0, 1.2))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            FluentIcons.location_12_regular,
                            color: AppColors.primaryColor,
                            size: 20,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          CommonNormalText(
                            text: "Shipping Address",
                            color: AppColors.primaryColor,
                            size: 14,
                            fontfamily: 'PopinsRegular',
                          ),
                        ],
                      ),

                    )),
                const SizedBox(height: 20,),
                /// Payment Methods
                Container(
                    height: 45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: AppColors.greyColor.withOpacity(0.3),
                              blurRadius: 1,
                              spreadRadius: 0.5,
                              offset: Offset(0, 1.2))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            FluentIcons.wallet_16_regular,
                            color: AppColors.primaryColor,
                            size: 20,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          CommonNormalText(
                            text: "Payment Methods",
                            color: AppColors.primaryColor,
                            size: 14,
                            fontfamily: 'PopinsRegular',
                          ),
                        ],
                      ),

                    )),
                const SizedBox(height: 20,),

                /// Orders
                Container(
                    height: 45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: AppColors.greyColor.withOpacity(0.3),
                              blurRadius: 1,
                              spreadRadius: 0.5,
                              offset: Offset(0, 1.2))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            FluentIcons.task_list_ltr_20_regular,
                            color: AppColors.primaryColor,
                            size: 20,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          CommonNormalText(
                            text: "Orders",
                            color: AppColors.primaryColor,
                            size: 14,
                            fontfamily: 'PopinsRegular',
                          ),
                        ],
                      ),

                    )),
                const SizedBox(height: 20,),
                /// Favourite
                Container(
                    height: 45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: AppColors.greyColor.withOpacity(0.3),
                              blurRadius: 1,
                              spreadRadius: 0.5,
                              offset: Offset(0, 1.2))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            FluentIcons.person_heart_20_regular,
                            color: AppColors.primaryColor,
                            size: 20,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          CommonNormalText(
                            text: "Favourite",
                            color: AppColors.primaryColor,
                            size: 14,
                            fontfamily: 'PopinsRegular',
                          ),
                        ],
                      ),

                    )),
                const SizedBox(height: 20,),
                /// Settings
                Container(
                    height: 45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: AppColors.greyColor.withOpacity(0.3),
                              blurRadius: 1,
                              spreadRadius: 0.5,
                              offset: Offset(0, 1.2))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            FluentIcons.settings_16_regular,
                            color: AppColors.primaryColor,
                            size: 20,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          CommonNormalText(
                            text: "Settings",
                            color: AppColors.primaryColor,
                            size: 14,
                            fontfamily: 'PopinsRegular',
                          ),
                        ],
                      ),

                    )),

                const SizedBox(height: 20,),
                /// Log Out
                Container(
                    height: 45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: AppColors.greyColor.withOpacity(0.3),
                              blurRadius: 1,
                              spreadRadius: 0.5,
                              offset: Offset(0, 1.2))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            FluentIcons.door_arrow_right_16_regular,
                            color: AppColors.primaryColor,
                            size: 20,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          CommonNormalText(
                            text: "Log Out",
                            color: AppColors.primaryColor,
                            size: 14,
                            fontfamily: 'PopinsRegular',
                          ),
                        ],
                      ),

                    )),
              ],),
            )
          ],
        ));
  }
}
