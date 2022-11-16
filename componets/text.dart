import 'dart:ui';
import 'package:flutter/material.dart';

class CommonLargeText extends StatelessWidget {
  final String text;
  final Color color;
  final double? size;
  final double? subsize;
  final FontWeight? fontWeight;
  final FontWeight? subfontWeight;
  final String? fontfamily;
  final TextAlign ? textAlign;
  final TextDecoration? textDecoration;

  final bool? title;
  final double? letterspacing;
  final int? maxlines;

  const CommonLargeText(
      {Key? key,
      required this.text,
      this.size = 18,
      this.fontWeight = FontWeight.w900,
      this.fontfamily = 'PopinsSemibold',
      this.title = false,
      required this.color, this.subfontWeight = FontWeight.w500, this.textAlign, this.letterspacing, this.subsize = 24, this.textDecoration, this.maxlines,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxlines,
      style: TextStyle(
        color: color,
        fontSize: title == false ? size : subsize,
        fontWeight: title == false ? subfontWeight : fontWeight,
        fontFamily: fontfamily,
        decoration: textDecoration,
        letterSpacing: letterspacing,
      ),
    );
  }
}

class CommonNormalText extends StatelessWidget {
  final String text;
  final Color color;
  final double? size;
  final double ? smallsize;
  final FontWeight? fontWeight;
  final FontWeight? smallfontWeight;
  final String? fontfamily;
  final TextAlign ? textAlign;
  final TextDecoration? textDecoration;
  final TextOverflow? overflow;

  final bool? normaltext;
  final bool? softwrap;
  final int ? maxlines;

  const CommonNormalText(
      {Key? key,
        required this.text,
        this.size = 14,
        this.smallsize = 10,
        this.fontWeight = FontWeight.w400,
        this.smallfontWeight = FontWeight.w300,
        this.fontfamily = "InterRegular",
        this.normaltext = false,
        required this.color, this.textAlign, this.textDecoration, this.maxlines, this.softwrap, this.overflow,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxlines,
      softWrap: softwrap,
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontSize: normaltext == false ? size : smallsize,
        fontWeight: normaltext == false ? fontWeight : smallfontWeight,
        fontFamily: fontfamily,
        decoration: textDecoration,
      ),
    );
  }
}