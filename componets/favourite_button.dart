import 'package:fashion_hub/componets/container.dart';
import 'package:fashion_hub/data/app_colors.dart';
import 'package:flutter/material.dart';

class FavouriteButton extends StatefulWidget {
  const FavouriteButton({Key? key}) : super(key: key);

  @override
  State<FavouriteButton> createState() => _FavouriteButtonState();
}

class _FavouriteButtonState extends State<FavouriteButton> {
  bool usertap = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          usertap = !usertap;
        });
      },
      child: Container(
        height: 35,
        width: 35,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(35),
          boxShadow: [BoxShadow(color: AppColors.greyColor.withOpacity(0.5),spreadRadius: 0.5,blurRadius: 5,offset: Offset(1,3))]
        ),
        child: Center(
          child: usertap == false
              ? SizedBox(height: 16, child: Image.asset("assets/fav.png"))
              : SizedBox(height: 16, child: Image.asset("assets/like.png",color: Colors.amber,)),
        ),
      ),
    );
  }
}
