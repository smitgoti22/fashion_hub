import 'package:fashion_hub/componets/search.dart';
import 'package:fashion_hub/componets/text.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

import '../data/app_colors.dart';
import 'bottom_navigation_bar.dart';
import 'container.dart';

class Custom_AppBar extends StatelessWidget {
  final String text;
  final IconButton iconButton;
  final bool ? leading;

  const Custom_AppBar({Key? key, required this.text, required this.iconButton,  this.leading = true,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
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
            title: CommonLargeText(text: text, color: Colors.white),
            centerTitle: true,
            leading: leading == false ? SizedBox(width: 0): IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              splashRadius: 20,
              icon: Icon(FluentIcons.ios_arrow_ltr_24_filled,
                  size: 25, color: AppColors.primaryColor.withOpacity(0.60)),
            ),
            actions: [
              iconButton,
            ],
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
    );
  }
}
