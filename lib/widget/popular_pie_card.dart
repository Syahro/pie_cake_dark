import 'package:flutter/material.dart';
import 'package:pie_cake_dark/theme.dart';

class PopularPieCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String star;

  PopularPieCard({
    this.imageUrl,
    this.name,
    this.star,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 223,
      width: 150,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: semiBlackColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
              width: 126,
              height: 136,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            name,
            style: subTitleTextstyle.copyWith(
              fontSize: 14,
              color: whiteColor,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                color: orangeColor,
                size: 20,
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                star,
                style: subTitleTextstyle.copyWith(
                    fontSize: 12, color: orangeColor),
              )
            ],
          )
        ],
      ),
    );
  }
}
