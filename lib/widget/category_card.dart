import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pie_cake_dark/theme.dart';

class CategoryCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final bool isActive;

  CategoryCard({
    this.imageUrl,
    this.name,
    this.isActive,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: (isActive) ? orangeColor : semiBlackColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Image.asset(
              imageUrl,
              width: 30,
              height: 30,
              color: (isActive) ? blackColor : orangeColor,
            ),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          name,
          style: subTitleTextstyle.copyWith(
            fontSize: 12,
            color: (isActive) ? whiteColor : darkGreyColor,
          ),
        ),
      ],
    );
  }
}
