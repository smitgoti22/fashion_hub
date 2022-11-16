import 'package:fashion_hub/componets/container.dart';
import 'package:fashion_hub/componets/success_alert.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

import '../../../componets/appbar.dart';
import '../../../componets/text.dart';
import '../../../data/app_colors.dart';
import '../../../data/appdata.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({Key? key}) : super(key: key);

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Custom_AppBar(
              text: "Checkout",
              leading: true,
              iconButton: IconButton(
                onPressed: () {},
                splashRadius: 20,
                icon: const Icon(
                  FluentIcons.delete_12_regular,
                  color: Colors.transparent,
                  size: 28,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// location
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        FluentIcons.location_12_regular,
                        color: AppColors.primaryColor,
                        size: 22,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      CommonNormalText(
                        text: "Shipping Address",
                        color: AppColors.blackColor,
                        size: 15,
                        fontfamily: 'PopinsRegular',
                      ),
                    ],
                  ),

                  ///address
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                      height: 95,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: AppColors.greyColor.withOpacity(0.4),
                                blurRadius: 4,
                                spreadRadius: 0.4,
                                offset: Offset(0, 2.5))
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CommonNormalText(
                                  text: "Oleh Chabanov",
                                  color: AppColors.blackColor,
                                  size: 15,
                                  fontfamily: 'PopinsRegular',
                                ),
                                CommonNormalText(
                                  text: "Change >",
                                  color: AppColors.greyColor,
                                  size: 12,
                                  fontfamily: 'PopinsRegular',
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            CommonNormalText(
                              text:
                                  "225, Highland Area,\nSpringfield, Il 62704, USA",
                              color: AppColors.greyColor,
                              size: 12,
                              fontfamily: 'PopinsRegular',
                            ),
                          ],
                        ),
                      )),

                  /// delivery method
                  const SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.local_shipping_outlined,
                        color: AppColors.primaryColor,
                        size: 22,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      CommonNormalText(
                        text: "Delivery Method",
                        color: AppColors.blackColor,
                        size: 15,
                        fontfamily: 'PopinsRegular',
                      ),
                    ],
                  ),
                  const SizedBox(height: 15,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(3, (index) => GestureDetector(
                    onTap: () {
                      setState((){
                        selected = index;
                      });
                    },
                    child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            border: Border.all(color: selected == index ? AppColors.orangeColor : Colors.transparent, width: 1.5),
                            boxShadow: [
                              BoxShadow(
                                  color: AppColors.greyColor.withOpacity(0.4),
                                  blurRadius: 4,
                                  spreadRadius: 0.4,
                                  offset: Offset(0, 2.5))
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(height: 5,),
                              SizedBox(height: 40,width: 70,child: Image.asset(deleverymethod[index]['image'],fit: BoxFit.fitWidth),),
                              CommonNormalText(
                                text: deleverymethod[index]['price'],
                                color: AppColors.purpleColor,
                                size: 15,
                                fontfamily: 'PopinsBold',
                              ),
                              CommonNormalText(
                                text: deleverymethod[index]['time'],
                                color: AppColors.greyColor,
                                size: 10,
                                fontfamily: 'PopinsRegular',
                              ),
                            ],
                          ),
                        )),
                  ),),),

                  /// payment Methods
                  const SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        FluentIcons.wallet_16_regular,
                        color: AppColors.primaryColor,
                        size: 22,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      CommonNormalText(
                        text: "Payment Methods",
                        color: AppColors.blackColor,
                        size: 15,
                        fontfamily: 'PopinsRegular',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                      height: 55,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: AppColors.greyColor.withOpacity(0.4),
                                blurRadius: 4,
                                spreadRadius: 0.4,
                                offset: Offset(0, 2.5))
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child:  Row(
                          mainAxisAlignment:
                          MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 30,width: 30,child: Image.asset("assets/58482354cef1014c0b5e49c0.png",fit: BoxFit.fitWidth),),
                            SizedBox(width: 10,),
                            CommonNormalText(
                              text: "**** **** **** **45",
                              color: AppColors.blackColor,
                              size: 15,
                              fontfamily: 'PopinsRegular',
                            ),
                            const Spacer(),
                            CommonNormalText(
                              text: "Change >",
                              color: AppColors.primaryColor,
                              size: 12,
                              fontfamily: 'PopinsRegular',
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ),
            Spacer(),
            CommonContainer(
              height: 165,
              width: 384,
              color: AppColors.whiteColor,
              customRadius: true,
              customborderRadius:
              const BorderRadius.vertical(top: Radius.circular(25)),
              shadowColor: AppColors.greyColor.withOpacity(0.5),
              spreadRadius: 0.5,
              shadowBlurRadious: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        const SizedBox(height: 5,),
                        CommonNormalText(
                          text: "items",
                          color: AppColors.greyColor,
                          fontfamily: 'PopinsRegular',
                          size: 12,
                        ),
                        const Spacer(),
                        CommonNormalText(
                          text: "\$256",
                          color: AppColors.greyColor,
                          fontfamily: 'PopinsRegular',
                          size: 12,
                        ),
                      ],),
                    Row(
                      children: [
                        const SizedBox(height: 5,),
                        CommonNormalText(
                          text: "Delivery",
                          color: AppColors.greyColor,
                          fontfamily: 'PopinsRegular',
                          size: 12,
                        ),
                        const Spacer(),
                        CommonNormalText(
                          text: "\$20",
                          color: AppColors.greyColor,
                          fontfamily: 'PopinsRegular',
                          size: 12,
                        ),
                      ],),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        const SizedBox(height: 5,),
                        CommonNormalText(
                          text: "Total Price",
                          color: AppColors.blackColor,
                          fontfamily: 'PopinsRegular',
                          size: 16,
                        ),
                        const Spacer(),
                        CommonNormalText(
                          text: "\$276",
                          color: AppColors.blackColor,
                          fontfamily: 'PopinsRegular',
                          size: 16,
                        ),
                      ],),
                    const SizedBox(height: 10,),
                    /// checkout Button
                    GestureDetector(
                      onTap: () {
                        showDialog(context: context, builder: (BuildContext context){
                          return SuccessAlert();
                        });
                      },
                      child: CommonContainer(
                        height: 50,
                        width: double.infinity,
                        color: AppColors.primaryColor,
                        child: Center(
                            child: CommonLargeText(
                              text: "Pay",
                              color: AppColors.whiteColor,
                              fontfamily: 'PopinsRegular',
                              size: 16,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
