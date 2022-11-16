import 'package:fashion_hub/data/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ItemRatings extends StatefulWidget {

  const ItemRatings({Key? key}) : super(key: key);

  @override
  State<ItemRatings> createState() => _ItemRatingsState();
}

class _ItemRatingsState extends State<ItemRatings> {
  double rating = 0;

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: 5,
      minRating: 1,
      direction: Axis.horizontal,
      itemSize: 16,
      allowHalfRating: false,
      itemCount: 5,
      itemPadding:
      const EdgeInsets.only(
          right: 0.5),
      itemBuilder: (context, _) =>
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Image.asset(
              "assets/star.png",
      ),
          ),
      updateOnDrag: true,
      glow: false,
      onRatingUpdate: (rating) =>
          setState(() {
            this.rating = rating;
          }),
    );
  }
}
