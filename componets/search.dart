import 'package:fashion_hub/componets/container.dart';
import 'package:fashion_hub/data/app_colors.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 300,
      decoration: BoxDecoration(color: AppColors.whiteColor, borderRadius: BorderRadius.circular(35),boxShadow: [
        BoxShadow(
            color: AppColors.greyColor.withOpacity(0.7),
            spreadRadius: 0.1,
            blurRadius: 5,
            offset: Offset(1, 1))
      ]),
      child: TextField(
        cursorColor: AppColors.blackColor,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: SizedBox(
              height: 25,
              width: 25,
              child: Image.asset("assets/magnifying-glass.png"),
            ),
          ),
          hintText: "What are you looking for?",
          hintStyle: TextStyle(
              fontSize: 13,
              fontFamily: "PopinsRegular",
              color: AppColors.greyColor.withOpacity(0.5)),
          fillColor: AppColors.whiteColor,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(35),
            borderSide:
                BorderSide(color: Colors.transparent, style: BorderStyle.none),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(35),
            borderSide: BorderSide(
              color: AppColors.blackColor.withOpacity(0.7),
            ),
          ),
        ),
      ),
    );
  }
}
