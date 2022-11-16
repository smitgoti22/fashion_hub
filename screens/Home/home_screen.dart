import 'dart:ui';

import 'package:fashion_hub/componets/bottom_navigation_bar.dart';
import 'package:fashion_hub/componets/container.dart';
import 'package:fashion_hub/componets/drawer.dart';
import 'package:fashion_hub/componets/favourite_button.dart';
import 'package:fashion_hub/componets/homepageview.dart';
import 'package:fashion_hub/componets/rating_bar.dart';
import 'package:fashion_hub/componets/search.dart';
import 'package:fashion_hub/componets/text.dart';
import 'package:fashion_hub/data/app_colors.dart';
import 'package:fashion_hub/screens/Product_Screen/product_screen.dart';
import 'package:flutter/material.dart';

import '../../data/appdata.dart';

List currunt_item = featuredProducts;
int currunt_index = 0;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const AppDrawer(),
      bottomNavigationBar: const AppBottomNavigation(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            /// appbar
            Stack(
              clipBehavior: Clip.none,
              children: [
                const CommonContainer(
                  height: 125,
                  customborderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(30)),
                  customRadius: true,
                  gradient: LinearGradient(
                      colors: [Color(0xff2D6A4F), Color(0xff95D5B2)],
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft),
                ),

                /// app bar
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 20, top: 5),
                  child: AppBar(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    title: RichText(
                      text: TextSpan(
                          text: "Fashion",
                          style: const TextStyle(
                              fontSize: 26,
                              fontFamily: "LatoBold",
                              fontWeight: FontWeight.w500),
                          children: [
                            TextSpan(
                                text: "Hub",
                                style: TextStyle(
                                    color: AppColors.amberColor,
                                    fontFamily: "LatoBold"))
                          ]),
                    ),
                    centerTitle: true,
                    actions: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: SizedBox(
                          height: 20,
                          width: 20,
                          child: Image.asset('assets/notification.png'),
                        ),
                      )
                    ],
                    leading: Builder(builder: (BuildContext context){
                      return IconButton(
                        onPressed: (){
                          Scaffold.of(context).openDrawer();
                        },
                        icon: Image.asset('assets/menu.png'),
                      );
                    }),
                    leadingWidth: 35,
                  ),
                ),

                /// Search Field
                const Positioned(
                  bottom: -25,
                  left: 27,
                  right: 27,
                  child: SearchField(),
                ),
              ],
            ),
            const SizedBox(
              height: 45,
            ),

            /// body
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// offers Pageview
                  const HomePageView(),

                  /// Catalogue text
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      /// catalog text
                      CommonLargeText(
                        text: "Catalogue",
                        color: AppColors.primaryColor,
                        fontfamily: 'PopinsBold',
                      ),

                      /// see all button
                      GestureDetector(
                        onTap: () {},
                        child: CommonNormalText(
                          text: "See All >",
                          color: AppColors.primaryColor,
                          size: 13,
                          fontfamily: 'PopinsRegular',
                        ),
                      ),
                    ],
                  ),

                  /// Catalogue
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 105,
                    child: ListView.builder(
                        itemCount: cataloguehomedata.length,
                        clipBehavior: Clip.none,
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (BuildContext, int index) {
                          return CommonContainer(
                            height: 115,
                            width: 115,
                            color: Colors.black,
                            margin: const EdgeInsets.symmetric(horizontal: 6),
                            decorationImage: DecorationImage(
                                image: NetworkImage(
                                    "${cataloguehomedata[index]['image']}"),
                                opacity: 0.6,
                                fit: BoxFit.cover),
                            child: Center(
                              child: CommonLargeText(
                                  text: cataloguehomedata[index]['title'],
                                  color: AppColors.whiteColor,
                                  fontfamily: 'PopinsRegular',
                                  size: 15),
                            ),
                          );
                        }),
                  ),

                  /// featerd text
                  const SizedBox(
                    height: 15,
                  ),
                  CommonLargeText(
                    text: "Featured",
                    color: AppColors.primaryColor,
                    size: 16,
                    fontfamily: 'PopinsBold',
                  ),

                  /// featured
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 1.4,
                    width: double.infinity,
                    child: GridView.builder(
                        itemCount: featuredProducts.length,
                        clipBehavior: Clip.none,
                        scrollDirection: Axis.vertical,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2, mainAxisExtent: 370,crossAxisSpacing: 15),
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {
                              setState(
                                  (){
                                    currunt_item = featuredProducts;
                                    currunt_index = index;
                                    print(currunt_index);
                                  }
                              );
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const ProductScreen(),));
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(clipBehavior: Clip.none,children: [
                                  /// Product image
                                  CommonContainer(
                                    height: 250,
                                    width: 200,
                                    color: Colors.black,
                                    margin:
                                    const EdgeInsets.symmetric(horizontal: 0),
                                    shadowColor:
                                    AppColors.greyColor.withOpacity(0.5),
                                    spreadRadius: 0.1,
                                    shadowBlurRadious: 1,
                                    decorationImage: DecorationImage(
                                        image: NetworkImage(
                                            "${featuredProducts[index]['image']}"),
                                        fit: BoxFit.cover),
                                  ),
                                  /// fav button
                                  Positioned(right: -3,bottom: -13,child: FavouriteButton())
                                ],),
                                const SizedBox(
                                  height: 10,
                                ),
                                /// Rating bar
                                const ItemRatings(),
                                const SizedBox(height: 5,),
                                /// product title
                                CommonNormalText(
                                  text: featuredProducts[index]['title'],
                                  color: Colors.black,
                                  fontfamily: 'PopinsRegular',
                                  maxlines: 2,
                                  softwrap: true,
                                  fontWeight: FontWeight.w500,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                /// Product price
                                const SizedBox(height: 4,),
                                Row(children: [
                                  CommonNormalText(
                                    text: featuredProducts[index]['price'],
                                    color: Colors.black,
                                    fontfamily: 'PopinsBold',
                                    fontWeight: FontWeight.w500,
                                  ),
                                  const SizedBox(width: 10,),
                                  CommonNormalText(
                                    text: featuredProducts[index]['dprice'],
                                    color: Colors.black,
                                    fontfamily: 'PopinsBold',
                                    textDecoration: TextDecoration.lineThrough,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ],)
                              ],
                            ),
                          );
                        }),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
