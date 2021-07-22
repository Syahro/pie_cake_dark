import 'package:flutter/material.dart';
import 'package:pie_cake_dark/theme.dart';

class MenuBottom extends StatelessWidget {
  final String imageUrl;
  final String menuName;
  final bool isActive;
  final bool isNew;
  final int countNew;

  MenuBottom({
    this.imageUrl,
    this.menuName,
    this.isActive,
    this.isNew,
    this.countNew,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imageUrl,
          width: 20,
          height: 19,
          color:(isActive) ? orangeColor : darkGreyColor,
        ),
        SizedBox(
          height: 4,
        ),
        Row(
          children: [
            Text(
              menuName,
              style: subTitleTextstyle.copyWith(
                fontSize: 14,
                color: (isActive) ? orangeColor : darkGreyColor,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            (isNew)
                ? Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                      color: orangeColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        '$countNew',
                        style: titleTextStyle.copyWith(
                          color: blackColor,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  )
                : Container(),
          ],
        )
      ],
    );
  }
}
