import 'package:fashion_hub/componets/text.dart';
import 'package:fashion_hub/screens/Home/Cart_Screen/cart_screen.dart';
import 'package:fashion_hub/screens/Home/favorite_screen.dart';
import 'package:fashion_hub/screens/Home/home_screen.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

import '../data/app_colors.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          /// profile
          SizedBox(
            height: 100,
            width: double.infinity,
            child: Image.asset("assets/profile.png", fit: BoxFit.fitWidth),
          ),
          const SizedBox(
            height: 30,
          ),

          Padding(
            padding:  const EdgeInsets.symmetric(horizontal: 15),
            child: Column(children: [
              /// home
              GestureDetector(
                onTap : (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                },
                child: Container(
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
                              offset: const Offset(0, 1.2))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            FluentIcons.home_20_regular,
                            color: AppColors.primaryColor,
                            size: 20,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          CommonNormalText(
                            text: "Home",
                            color: AppColors.primaryColor,
                            size: 13,
                            fontfamily: 'PopinsRegular',
                          ),
                        ],
                      ),

                    )),
              ),
              const SizedBox(height: 20,),
              /// Payment Methods
              GestureDetector(
                onTap : (){
                },
                child: Container(
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
                              offset: const Offset(0, 1.2))
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
              ),
              const SizedBox(height: 20,),

              /// Orders
              GestureDetector(
                onTap : (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const CartScreen(),));
                },
                child: Container(
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
                              offset: const Offset(0, 1.2))
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
              ),
              const SizedBox(height: 20,),
              /// Favourite
              GestureDetector(
                onTap : (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const FavouriteScreen(),));
                },
                child: Container(
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
                              offset: const Offset(0, 1.2))
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
              ),
              const SizedBox(height: 20,),
              /// share
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
                          FluentIcons.share_16_regular,
                          color: AppColors.primaryColor,
                          size: 20,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        CommonNormalText(
                          text: "Share",
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
      ),
    );
  }
}
