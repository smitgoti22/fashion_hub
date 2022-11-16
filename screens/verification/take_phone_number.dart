import 'package:fashion_hub/componets/container.dart';
import 'package:fashion_hub/componets/text_form_field.dart';
import 'package:fashion_hub/screens/Home/home_screen.dart';
import 'package:fashion_hub/screens/verification/otp_screen.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../componets/text.dart';
import '../../data/app_colors.dart';

class GetMobNum extends StatefulWidget {
  const GetMobNum({Key? key}) : super(key: key);

  @override
  State<GetMobNum> createState() => _GetMobNumState();
}

class _GetMobNumState extends State<GetMobNum> {
  final contrypicker = FlCountryCodePicker();
  CountryCode? dataSeter;
  String code = "IN";
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    text: "What is Your Phone\nNumber ?",
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
              height: 15,
            ),

            /// body
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// instruction text
                    CommonNormalText(
                      text:
                          "Please enter your phone number to\nverify your account",
                      color: AppColors.greyColor,
                      fontWeight: FontWeight.w400,
                      fontfamily: 'PopinsRegular',
                    ),
                    const SizedBox(
                      height: 25,
                    ),

                    /// take mobile number
                    CommonContainer(
                      height: 55,
                      border: Border.all(color: AppColors.greyColor),
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () async {
                              final seter = await contrypicker.showPicker(
                                  context: context);
                              setState(() {
                                dataSeter = seter;
                              });
                            },
                            child: SizedBox(
                                width: 33,
                                height: 33,
                                child: dataSeter != null
                                    ? dataSeter!.flagImage
                                    : CountryCodeFlag(
                                        flagUri:
                                            'assets/flags/${code.toLowerCase()}.png')),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Icon(Icons.arrow_drop_down, size: 18),
                          const SizedBox(
                            width: 0,
                          ),
                          VerticalDivider(
                            color: AppColors.greyColor,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () async {
                              final seter = await contrypicker.showPicker(
                                  context: context);
                              setState(() {
                                dataSeter = seter;
                              });
                            },
                            child: CommonNormalText(
                              text: dataSeter?.dialCode ?? "+91",
                              color: Colors.black,
                              size: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            height: 55,
                            width: MediaQuery.of(context).size.width * 0.50,
                            child: CommonTextField(),
                          ),
                        ],
                      ),
                    ),

                    /// Send Verification Button
                    const SizedBox(
                      height: 325,
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => OtpScreen(),));
                        },
                        child: CommonContainer(
                          color: Color(0xff2D6A4F),
                          child: Center(
                              child: CommonLargeText(
                                  text: "Send Verification Code",
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
                          onTap: () {
                           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                          },
                          child: CommonLargeText(
                            text: "Skip",
                            size: 16,
                            color: AppColors.primaryColor,
                            fontfamily: 'PopinsRegular',
                          )),
                    ),
                    const SizedBox(
                      height: 15,
                    ),

                  ],
                )),
          ],
        ));
  }
}
