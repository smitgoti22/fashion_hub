import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../componets/container.dart';
import '../../componets/text.dart';
import '../../data/app_colors.dart';
import '../Home/home_screen.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.whiteColor,
      body: Column(
        children: [
          /// title text and background
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                  height: 10, width: double.infinity, color: Colors.black),
              SizedBox(
                  height: 225,
                  width: double.infinity,
                  child: Image.asset(
                    "assets/bar_backgeound.png",
                    fit: BoxFit.fill,
                  )),
              Positioned(
                left: 25,
                top: 55,
                child: CommonLargeText(
                  text: "Verification\nCode",
                  color: AppColors.whiteColor,
                  size: 21,
                  fontWeight: FontWeight.w400,
                  fontfamily: 'PopinsRegular',
                  letterspacing: 0.2,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),

          /// body
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// instruction text
                  CommonNormalText(
                    text: "Please enter Code sent to",
                    color: AppColors.greyColor,
                    // fontWeight: FontWeight.w400,
                    // fontWeight: FontWeight.w400,
                    size: 16,
                    fontfamily: 'PopinsRegular',
                  ),
                  const SizedBox(
                    height: 5,
                  ),

                  /// Mobile number and chage number
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CommonNormalText(
                        text: "+91 123 956 7890",
                        color: AppColors.blackColor,
                        size: 18,
                        fontfamily: 'PopinsBold',
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: CommonNormalText(
                          text: "Change phone Number",
                          color: AppColors.primaryColor.withOpacity(0.9),
                          fontWeight: FontWeight.w900,
                          textDecoration: TextDecoration.underline,
                          size: 12,
                          fontfamily: 'PopinsRegular',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),

                  /// otp Code
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                        4,
                        (index) => CommonContainer(
                            color: Colors.white,
                            height: 55,
                            width: 55,
                            child: TextField(
                              style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                              onChanged: (value){
                                if(value.length == 1 && index !=3)
                                  {
                                    FocusScope.of(context).nextFocus();
                                  }
                                if(value.length == 0 && index != 0)
                                  {
                                    FocusScope.of(context).previousFocus();
                                  }
                              },
                              textAlign: TextAlign.center,
                              cursorColor: AppColors.blackColor,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                                LengthLimitingTextInputFormatter(1),
                              ],
                              decoration: const InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)
                                )
                              ),
                            ))),
                  ),

                  /// Countinue Button
                  const SizedBox(height: 300),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ));
                      },
                      child: CommonContainer(
                        color: Color(0xff2D6A4F),
                        child: Center(
                            child: CommonLargeText(
                                text: "Continue",
                                color: AppColors.whiteColor,
                                size: 16,
                                fontfamily: "PopinsRegular")),
                      )),

                  /// skip button
                  const SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: GestureDetector(
                        onTap: () {},
                        child: CommonLargeText(
                          text: "Resend Code",
                          size: 15,
                          color: AppColors.primaryColor,
                          fontfamily: 'PopinsRegular',
                        )),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
