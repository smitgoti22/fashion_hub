import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

import '../../componets/appbar.dart';
import '../../componets/bottom_navigation_bar.dart';
import '../../componets/container.dart';
import '../../componets/favourite_button.dart';
import '../../componets/rating_bar.dart';
import '../../componets/text.dart';
import '../../data/app_colors.dart';
import '../../data/appdata.dart';
import '../Product_Screen/product_screen.dart';
import 'home_screen.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppBottomNavigation(),
      backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Custom_AppBar(
                text: "Favourite",
                leading: false,
                iconButton: IconButton(
                    onPressed: (){},
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
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      /// total items
                      Row(
                        children: [
                          CommonLargeText(
                            text: "7 Items",
                            color: AppColors.blackColor,
                            fontfamily: 'PopinsBold',
                          ),
                          const Spacer(),
                          CommonNormalText(
                            text: "Sort by : ",
                            color: AppColors.greyColor,
                            size: 13,
                          ),
                          CommonLargeText(
                            text: "Lowest to High",
                            color: AppColors.blackColor,
                            size: 13,
                            fontfamily: 'PopinsBold',
                          ),
                        ],),
                      const SizedBox(
                        height: 15,
                      ),

                      /// items
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          CommonContainer(height: MediaQuery.of(context).size.height * 1.4,width: double.infinity,color: Colors.transparent,),
                          Positioned(
                            top: -20,
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height * 1.4,
                              width: MediaQuery.of(context).size.width * 0.92,
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
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                    ]),
              ),
            ],
          ),
        ));
  }
}
