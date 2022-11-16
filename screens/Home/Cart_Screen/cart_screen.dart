import 'package:fashion_hub/componets/container.dart';
import 'package:fashion_hub/componets/toast.dart';
import 'package:fashion_hub/data/app_colors.dart';
import 'package:fashion_hub/data/appdata.dart';
import 'package:fashion_hub/screens/Home/Cart_Screen/check_out_screen.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

import '../../../componets/appbar.dart';
import '../../../componets/bottom_navigation_bar.dart';
import '../../../componets/text.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int counter = 0;
  List counterlist = [1,1,1];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Custom_AppBar(
              text: "Cart",
              leading: true,
              iconButton: IconButton(
                onPressed: cartdeletetoastShow,
                splashRadius: 20,
                icon: Icon(
                  FluentIcons.delete_12_regular,
                  color: AppColors.secondaryColor.withOpacity(0.6),
                  size: 28,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            /// items
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: List.generate(
                      3,
                      (index) => Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 5),
                            child: CommonContainer(
                              height: 120,
                              color: Colors.white,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(crossAxisAlignment: CrossAxisAlignment.center,children: [
                                    SizedBox(
                                      height: 100,
                                      width: 100,
                                      child: Image.network(
                                          featuredProducts[index]['image'],
                                          fit: BoxFit.fitHeight),
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        /// title
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        SizedBox(
                                          height: 70,
                                          width: 175,
                                          child: CommonNormalText(
                                              text: featuredProducts[index]
                                                  ['title'],
                                              color: AppColors.blackColor,
                                              fontfamily: 'PopinsRegular',
                                              maxlines: 3,
                                              overflow: TextOverflow.ellipsis,
                                              size: 13),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),

                                        /// price
                                        CommonNormalText(
                                            text: featuredProducts[index]['price'],
                                            color: AppColors.blackColor,
                                            fontfamily: 'PopinsBold',
                                            size: 14),
                                      ],
                                    ),
                                    const Spacer(),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        CommonContainer(
                                            height: 25,
                                            width: 25,
                                            customRadius: true,
                                            customborderRadius:
                                                BorderRadius.circular(35),
                                            border: Border.all(
                                                color: AppColors.greyColor),
                                            child: IconButton(
                                              onPressed: () {
                                            setState((){
                                              if(counterlist[index] != 0)
                                                {
                                                  counterlist[index] = counter--;
                                                }
                                            });
                                              },
                                              padding: EdgeInsets.zero,
                                              splashRadius: 15,
                                              icon: Icon(Icons.remove, size: 16,color: AppColors.greyColor),
                                            )),
                                        const SizedBox(height: 10,),
                                        CommonNormalText(
                                            text: counterlist[index].toString(),
                                            color: AppColors.greyColor,
                                            fontfamily: 'PopinsRegular',
                                            size: 13),
                                        const SizedBox(height: 10,),
                                        CommonContainer(
                                            height: 25,
                                            width: 25,
                                            customRadius: true,
                                            customborderRadius:
                                                BorderRadius.circular(35),
                                            border: Border.all(
                                                color: AppColors.greyColor),
                                            child: IconButton(
                                              onPressed: () {
                                                setState((){
                                                  counterlist[index] = counter++;
                                                });
                                              },
                                              splashRadius: 15,
                                              padding: EdgeInsets.zero,
                                              icon: Icon(Icons.add, size: 16,color: AppColors.greyColor),
                                            )),
                                      ],
                                    ),
                                  ]),
                                  const SizedBox(height: 4,),
                                  const Divider(color: Colors.grey,thickness: 0.5),
                                ],
                              ),
                            ),
                          )),
              ),
            ),
            /// Checkout
            Spacer(),
            CommonContainer(
                height: 130,
                width: 384,
                color: AppColors.whiteColor,
                customRadius: true,
                customborderRadius:
                const BorderRadius.vertical(top: Radius.circular(25)),
                shadowColor: AppColors.greyColor.withOpacity(0.5),
                spreadRadius: 0.5,
                shadowBlurRadious: 5,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
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
                              text: "\$256",
                              color: AppColors.blackColor,
                              fontfamily: 'PopinsRegular',
                              size: 16,
                            ),
                          ],),
                      ),
                      const SizedBox(height: 15,),
                      /// checkout Button

                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const CheckOutScreen(),));
                  },
                  child: CommonContainer(
                            height: 50,
                            width: double.infinity,
                            color: AppColors.primaryColor,
                            child: Center(
                                child: CommonLargeText(
                                  text: "Checkout",
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
