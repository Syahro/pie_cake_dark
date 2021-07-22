import 'package:flutter/material.dart';
import 'package:pie_cake_dark/theme.dart';
import 'package:pie_cake_dark/widget/category_card.dart';
import 'package:pie_cake_dark/widget/floating_button.dart';
import 'package:pie_cake_dark/widget/popular_pie_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: blackColor,
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(defaultMargin),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    'assets/user.png',
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 18,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: 'Hello, ',
                        style: titleTextStyle.copyWith(
                          fontSize: 20,
                          color: whiteColor,
                        ),
                        children: [
                          TextSpan(
                            text: 'Shadam',
                            style: titleTextStyle.copyWith(
                              fontSize: 20,
                              color: orangeColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'What Pie you want to try today?',
                      style: subTitleTextstyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: defaultMargin,
              right: defaultMargin,
              bottom: defaultMargin,
            ),
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: semiBlackColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Find your favorite Pie',
                      style: subTitleTextstyle.copyWith(
                        fontSize: 14,
                        color: darkGreyColor,
                      ),
                    ),
                    Icon(
                      Icons.search,
                      color: darkGreyColor,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 600,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: semiBlackColor.withOpacity(0.3),
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(30),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: defaultMargin,
                    right: defaultMargin,
                    left: defaultMargin,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Category',
                        style: titleTextStyle.copyWith(
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CategoryCard(
                            imageUrl: 'assets/salty_pie.png',
                            name: 'Salty Pie',
                            isActive: false,
                          ),
                          CategoryCard(
                            imageUrl: 'assets/sweet_pie.png',
                            name: 'Sweet Pie',
                            isActive: true,
                          ),
                          CategoryCard(
                            imageUrl: 'assets/fruit_pie.png',
                            name: 'Fruit Pie',
                            isActive: false,
                          ),
                          CategoryCard(
                            imageUrl: 'assets/drink.png',
                            name: 'Drinks',
                            isActive: false,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Popular Sweet Pie',
                        style: titleTextStyle.copyWith(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: defaultMargin,
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        PopularPieCard(
                          imageUrl: 'assets/cream_sweet_pie.png',
                          name: 'Cream Sweet Pie',
                          star: '4.5',
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        PopularPieCard(
                          imageUrl: 'assets/double_jumbo_pie.png',
                          name: 'DoubleJumbo Pie',
                          star: '4.8',
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        PopularPieCard(
                          imageUrl: 'assets/fruit_small_pie.png',
                          name: 'Fruit’s Small Pie',
                          star: '4.5',
                        ),
                        SizedBox(
                          width: defaultMargin,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
