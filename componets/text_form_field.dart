import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../data/app_colors.dart';

TextEditingController textEditingController = TextEditingController();

class CommonTextField extends StatelessWidget {

   CommonTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
          keyboardType: TextInputType.phone,
          textInputAction: TextInputAction.done,
          textAlign: TextAlign.start,
          maxLengthEnforcement: MaxLengthEnforcement.enforced,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(10),
          ],
          cursorColor: AppColors.blackColor,
          controller: textEditingController,
          style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500
          ),
          decoration: InputDecoration(
              hintText: "123 456 7890",
              hintStyle: TextStyle(fontSize: 17,color: AppColors.greyColor.withOpacity(0.5)),
              border: InputBorder.none,
              // enabledBorder: OutlineInputBorder(
              //     borderSide:
              //     BorderSide(color: AppColors.blackColor)),
              // focusedBorder: OutlineInputBorder(
              //     borderSide:
              //     BorderSide(color: AppColors.blackColor)),
              contentPadding: EdgeInsets.only(top: 5)
          ),
        );
  }
}
