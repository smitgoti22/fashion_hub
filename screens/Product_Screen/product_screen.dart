import 'package:fashion_hub/componets/rating_bar.dart';
import 'package:fashion_hub/componets/toast.dart';
import 'package:fashion_hub/screens/Home/home_screen.dart';
import 'package:flutter/material.dart';

import '../../componets/container.dart';
import '../../componets/favourite_button.dart';
import '../../componets/text.dart';
import '../../data/app_colors.dart';
import '../../data/appdata.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  int trackindex = 0;
  PageController pageController = PageController(initialPage: 0);
  int cindex = 0;
  int usertap = 0;
  int sizetap = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  CommonContainer(
                    height: 520,
                    width: double.infinity,
                    color: Colors.white,
                    borderRadius: 0,
                    child: Column(
                      children: [
                        /// Product images
                        SizedBox(
                          height: 350,
                          width: double.infinity,
                          child: PageView(
                              controller: pageController,
                              scrollDirection: Axis.horizontal,
                              physics: BouncingScrollPhysics(),
                              onPageChanged: (value) {
                                setState(() {
                                  pageController =
                                      PageController(initialPage: value);
                                  trackindex = value;
                                });
                              },
                              children: List.generate(
                                  productImages.length,
                                  (index) => CommonContainer(
                                        borderRadius: 0,
                                        decorationImage: DecorationImage(
                                            image: NetworkImage(
                                                "${productImages[index]}"),
                                            fit: BoxFit.cover),
                                      ))),
                        ),

                        /// track page dots
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(
                                    productImages.length,
                                    (index) => Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 5),
                                          child: CircleAvatar(
                                            radius: index == trackindex ? 4 : 3,
                                            backgroundColor: index == trackindex
                                                ? AppColors.thirdColor
                                                : AppColors.fourthColor,
                                          ),
                                        )),
                              ),

                              /// ratings, reviews, stock
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  /// rating
                                  const ItemRatings(),
                                  const SizedBox(
                                    width: 10,
                                  ),

                                  /// review
                                  CommonNormalText(
                                    text: "103 Reviews",
                                    color: AppColors.primaryColor,
                                    size: 13,
                                    fontfamily: 'PopinsRegular',
                                  ),
                                  const Spacer(),

                                  /// review
                                  CommonNormalText(
                                    text: "In Stock",
                                    color: AppColors.primaryColor,
                                    size: 14,
                                    fontfamily: 'PopinsBold',
                                  ),
                                ],
                              ),

                              /// item name
                              const SizedBox(
                                height: 10,
                              ),
                              CommonNormalText(
                                text: featuredProducts[cindex]['title'],
                                color: AppColors.blackColor,
                                size: 16,
                                maxlines: 2,
                                overflow: TextOverflow.ellipsis,
                                fontfamily: 'PopinsRegular',
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              CommonNormalText(
                                text: featuredProducts[cindex]['price'],
                                color: AppColors.blackColor,
                                size: 18,
                                maxlines: 2,
                                overflow: TextOverflow.ellipsis,
                                fontfamily: 'PopinsBold',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),

                  /// colors and size
                  CommonContainer(
                    height: 225,
                    width: double.infinity,
                    color: Colors.white,
                    borderRadius: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 15,
                          ),

                          /// colors
                          CommonNormalText(
                            text: 'Colors',
                            color: AppColors.blackColor,
                            size: 16,
                            maxlines: 2,
                            overflow: TextOverflow.ellipsis,
                            fontfamily: 'PopinsRegular',
                          ),
                          const SizedBox(
                            height: 15,
                          ),
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
                                            usertap = index;
                                          });
                                        },
                                        child: CommonContainer(
                                          height: 48,
                                          width: 48,
                                          color: Colors.transparent,
                                          border: Border.all(
                                              color: index == usertap
                                                  ? AppColors.orangeColor
                                                  : AppColors.greyColor
                                                      .withOpacity(0.5),
                                              width: 1),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.network(
                                                featuredProducts[currunt_index]
                                                    ['i1'],
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                      ),
                                    )),
                          ),
                          const SizedBox(
                            height: 15,
                          ),

                          /// Size
                          CommonNormalText(
                            text: 'Size',
                            color: AppColors.blackColor,
                            size: 16,
                            maxlines: 2,
                            overflow: TextOverflow.ellipsis,
                            fontfamily: 'PopinsRegular',
                          ),
                          const SizedBox(
                            height: 15,
                          ),
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
                                            color: Colors.transparent,
                                            border: Border.all(
                                                color: index == sizetap
                                                    ? AppColors.orangeColor
                                                    : AppColors.greyColor
                                                        .withOpacity(0.5),
                                                width: 1),
                                            child: Center(
                                                child: CommonLargeText(
                                              text: productSize[index],
                                              color: index == sizetap
                                                  ? AppColors.orangeColor
                                                  : AppColors.greyColor
                                                      .withOpacity(0.5),
                                              size: 15,
                                              fontfamily: 'PopinsRegular',
                                            ))),
                                      ),
                                    )),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 15,
                  ),

                  CommonContainer(
                    height: 175,
                    width: double.infinity,
                    color: Colors.white,
                    borderRadius: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 15,
                          ),

                          /// colors
                          CommonNormalText(
                            text: 'Product Details',
                            color: AppColors.blackColor,
                            size: 16,
                            maxlines: 2,
                            overflow: TextOverflow.ellipsis,
                            fontfamily: 'PopinsBold',
                          ),
                          const SizedBox(
                            height: 5,
                          ),

                          /// Description
                          CommonNormalText(
                            text: featuredProducts[0]['desc'],
                            color: AppColors.blackColor,
                            maxlines: 5,
                            overflow: TextOverflow.ellipsis,
                            fontfamily: 'PopinsRegular',
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),

                  /// Reviews
                  CommonContainer(
                    height: 200,
                    width: double.infinity,
                    color: Colors.white,
                    borderRadius: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 15,
                          ),

                          /// Reviews
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              /// Reviews text
                              CommonLargeText(
                                text: "Reviews",
                                size: 16,
                                color: AppColors.blackColor,
                                fontfamily: 'PopinsBold',
                              ),

                              /// see all button
                              GestureDetector(
                                onTap: () {},
                                child: CommonNormalText(
                                  text: "See All >",
                                  color: AppColors.greyColor,
                                  size: 13,
                                  fontfamily: 'PopinsRegular',
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 2,
                          ),

                          /// name
                          CommonNormalText(
                            text: "Depika Patel",
                            color: AppColors.blackColor,
                            maxlines: 4,
                            overflow: TextOverflow.ellipsis,
                            fontfamily: 'PopinsRegular',
                          ),

                          /// Ratings
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              /// ratings
                              ItemRatings(),

                              /// date
                              CommonNormalText(
                                text: "june, 2021",
                                color: AppColors.greyColor,
                                size: 13,
                                fontfamily: 'PopinsRegular',
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 6,
                          ),

                          /// Description
                          CommonNormalText(
                            text:
                                "Soft and comfortable material, fitting is very nice, length is between a crop and normal sweatshirt. perfect sweatshirt also the colour is very classy and most imp it is same as shown in the picture.",
                            color: AppColors.blackColor,
                            maxlines: 4,
                            overflow: TextOverflow.ellipsis,
                            fontfamily: 'PopinsRegular',
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),

                  /// Similar products
                  CommonContainer(
                    height: 450,
                    width: double.infinity,
                    color: Colors.white,
                    borderRadius: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 15,
                          ),

                          /// Reviews
                          CommonLargeText(
                            text: "View Similar",
                            size: 16,
                            color: AppColors.blackColor,
                            fontfamily: 'PopinsBold',
                          ),

                          /// Products
                          Expanded(
                            child: ListView.builder(
                                itemCount: featuredProducts.length,
                                clipBehavior: Clip.none,
                                scrollDirection: Axis.horizontal,
                                physics: const BouncingScrollPhysics(),
                                itemBuilder: (BuildContext context, int index) {
                                  return InkWell(
                                    onTap: () {
                                      setState(() {
                                        currunt_item = featuredProducts;
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
                                    child: CommonContainer(
                                      height: 450,
                                      width: 225,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(
                                              height: 15,
                                            ),
                                            Stack(
                                              clipBehavior: Clip.none,
                                              children: [
                                                /// Product image
                                                CommonContainer(
                                                  height: 250,
                                                  width: 200,
                                                  color: Colors.black,
                                                  margin: const EdgeInsets
                                                      .symmetric(horizontal: 0),
                                                  shadowColor: AppColors
                                                      .greyColor
                                                      .withOpacity(0.5),
                                                  spreadRadius: 0.1,
                                                  shadowBlurRadious: 1,
                                                  decorationImage: DecorationImage(
                                                      image: NetworkImage(
                                                          "${featuredProducts[index]['image']}"),
                                                      fit: BoxFit.cover),
                                                ),

                                                /// fav button
                                                const Positioned(
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
                                              text: featuredProducts[index]
                                                  ['title'],
                                              color: Colors.black,
                                              fontfamily: 'PopinsRegular',
                                              maxlines: 2,
                                              softwrap: true,
                                              fontWeight: FontWeight.w500,
                                              overflow: TextOverflow.ellipsis,
                                            ),

                                            /// Product price
                                            const SizedBox(
                                              height: 5,
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
                                                  textDecoration: TextDecoration
                                                      .lineThrough,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 70,),
                ],
              ),
            ),

            /// add to cart
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: CommonContainer(
                height: 100,
                width: 384,
                color: AppColors.whiteColor,
                customRadius: true,
                customborderRadius:
                    const BorderRadius.vertical(top: Radius.circular(25)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      /// Back Button
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_rounded,
                            size: 35,
                            color: AppColors.greyColor.withOpacity(0.5),
                          )),

                      /// Add to cart Button
                      GestureDetector(
                        onTap: toastShow,
                        child: CommonContainer(
                          height: 50,
                          width: 215,
                          color: AppColors.primaryColor,
                          child: Center(
                              child: CommonLargeText(
                            text: "Add to Cart",
                            color: AppColors.whiteColor,
                            fontfamily: 'PopinsRegular',
                            size: 16,
                          )),
                        ),
                      ),

                      /// Fav Button
                      const SizedBox(
                          height: 45, width: 45, child: FavouriteButton())
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
