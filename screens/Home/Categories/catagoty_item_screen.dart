import 'package:fashion_hub/screens/Home/Categories/filter_screen.dart';
import 'package:fashion_hub/screens/Home/home_screen.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

import '../../../componets/appbar.dart';
import '../../../componets/bottom_navigation_bar.dart';
import '../../../componets/container.dart';
import '../../../componets/favourite_button.dart';
import '../../../componets/rating_bar.dart';
import '../../../componets/text.dart';
import '../../../data/app_colors.dart';
import '../../../data/appdata.dart';
import '../../Product_Screen/product_screen.dart';

class CatagoryItemScreen extends StatefulWidget {
  const CatagoryItemScreen({Key? key}) : super(key: key);

  @override
  State<CatagoryItemScreen> createState() => _CatagoryItemScreenState();
}

class _CatagoryItemScreenState extends State<CatagoryItemScreen> {
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
                text: "${catalog_subcatagory[currunt_index]}",
                iconButton: IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => FilterScreen(),));
                    },
                    splashRadius: 24,
                    icon: Icon(
                      Icons.settings_input_component,
                      color: AppColors.secondaryColor,
                    )),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      /// sub catagory
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        clipBehavior: Clip.none,
                        physics: BouncingScrollPhysics(),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                              subcatagory.length,
                              (index) => Center(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            usertap = index;
                                          });
                                        },
                                        child: Container(
                                            height: 30,
                                            width: 75,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                color: index == usertap
                                                    ? AppColors.primaryColor
                                                        .withOpacity(0.8)
                                                    : Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: index == usertap
                                                          ? AppColors
                                                              .secondaryColor
                                                          : AppColors.greyColor
                                                              .withOpacity(0.8),
                                                      blurRadius: 0.1,
                                                      spreadRadius: 0.1,
                                                      offset: Offset(0, 0))
                                                ]),
                                            child: Center(
                                                child: CommonLargeText(
                                              text: subcatagory[index],
                                              color: index == usertap
                                                  ? AppColors.whiteColor
                                                  : AppColors.greyColor
                                                      .withOpacity(0.7),
                                              size: 12,
                                              subfontWeight: FontWeight.w500,
                                              fontfamily: 'PopinsRegular',
                                            ))),
                                      ),
                                    ),
                                  )),
                        ),
                      ),

                      /// total items text
                      const SizedBox(height: 15,),

                      Row(
                        children: [
                        CommonLargeText(
                          text: "415 Items",
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
                          text: "Featured",
                          color: AppColors.blackColor,
                          size: 13,
                          fontfamily: 'PopinsBold',
                        ),
                      ],),

                      /// items
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          CommonContainer(height: MediaQuery.of(context).size.height * 1.4,color: Colors.transparent,),
                          Positioned(
                            top: -15,
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height * 1.4,
                              width: MediaQuery.of(context).size.width * 0.922,
                              child: GridView.builder(
                                  itemCount: featuredProducts.length,
                                  clipBehavior: Clip.none,
                                  scrollDirection: Axis.vertical,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2,
                                          mainAxisExtent: 370,
                                          crossAxisSpacing: 15),
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemBuilder: (BuildContext context, int index) {
                                    return InkWell(
                                      onTap: () {
                                        setState(() {
                                          currunt_item = subcatagoryProducts;
                                          currunt_index = index;
                                          print(currunt_index);
                                        });
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const ProductScreen(),
                                            ));
                                      },
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Stack(
                                            clipBehavior: Clip.none,
                                            children: [
                                              /// Product image
                                              CommonContainer(
                                                height: 250,
                                                width: 200,
                                                color: Colors.black,
                                                margin: const EdgeInsets.symmetric(
                                                    horizontal: 0),
                                                shadowColor: AppColors.greyColor
                                                    .withOpacity(0.5),
                                                spreadRadius: 0.1,
                                                shadowBlurRadious: 1,
                                                decorationImage: DecorationImage(
                                                    image: NetworkImage(
                                                        "${subcatagoryProducts[index]['image']}"),
                                                    fit: BoxFit.cover),
                                              ),

                                              /// fav button
                                              Positioned(
                                                  right: -3,
                                                  bottom: -13,
                                                  child: FavouriteButton())
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),

                                          /// Rating bar
                                          const ItemRatings(),
                                          const SizedBox(
                                            height: 5,
                                          ),

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
                                          const SizedBox(
                                            height: 4,
                                          ),
                                          Row(
                                            children: [
                                              CommonNormalText(
                                                text: featuredProducts[index]
                                                    ['price'],
                                                color: Colors.black,
                                                fontfamily: 'PopinsBold',
                                                fontWeight: FontWeight.w500,
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              CommonNormalText(
                                                text: featuredProducts[index]
                                                    ['dprice'],
                                                color: Colors.black,
                                                fontfamily: 'PopinsBold',
                                                textDecoration:
                                                    TextDecoration.lineThrough,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    );
                                  }),
                            ),
                          ),
                        ],
                      ),

                    ]),
              ),

            ],
          ),
        ));
  }
}
