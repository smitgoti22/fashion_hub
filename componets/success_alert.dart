import 'package:fashion_hub/componets/container.dart';
import 'package:fashion_hub/componets/text.dart';
import 'package:fashion_hub/screens/Home/Cart_Screen/cart_screen.dart';
import 'package:fashion_hub/screens/Home/home_screen.dart';
import 'package:flutter/material.dart';

import '../data/app_colors.dart';

class SuccessAlert extends StatefulWidget {
  const SuccessAlert({Key? key}) : super(key: key);

  @override
  State<SuccessAlert> createState() => _SuccessAlertState();
}

class _SuccessAlertState extends State<SuccessAlert> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      child: CommonContainer(
        height: 285,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 75,
              width: double.infinity,
              child: Image.asset(
                  "assets/success.png",
                  fit: BoxFit.fitHeight),
            ),
            const SizedBox(height: 15,),
            CommonNormalText(
                text: "Success",
                color: AppColors.purpleColor,
                fontfamily: 'PopinsBold',
                size: 20),
            const SizedBox(height: 5,),
            CommonNormalText(
                text: "Your order will be delivered soon.\nIt can be tracked in the \"Orders\" section.",
                color: AppColors.greyColor,
                textAlign: TextAlign.center,
                fontfamily: 'PopinsRegular',
                size: 12),
            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen(),));
                  Navigator.pop(context);
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                child: CommonContainer(
                  height: 40,
                  width: double.infinity,
                  color: AppColors.primaryColor,
                  child: Center(
                      child: CommonLargeText(
                        text: "Continue Shopping",
                        color: AppColors.whiteColor,
                        fontfamily: 'PopinsRegular',
                        size: 14,
                      )),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const CartScreen(),));
                Navigator.pop(context);
                Navigator.pop(context);
              },
              child: Center(
                  child: CommonLargeText(
                    text: "Go to Orders",
                    color: AppColors.primaryColor,
                    fontfamily: 'PopinsRegular',
                    size: 14,
                  )),
            ),
            const SizedBox(height: 20,)
          ],
        ),
      )
      );
  }
}
