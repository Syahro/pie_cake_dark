import 'package:flutter/material.dart';
import 'package:pie_cake_dark/theme.dart';
import 'package:pie_cake_dark/widget/menu_bottom.dart';

class FloatingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: semiBlackColor,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MenuBottom(
              imageUrl: 'assets/home.png',
              menuName: 'Home',
              isActive: true,
              isNew: false,
              countNew: 0,
            ),
            MenuBottom(
              imageUrl: 'assets/cart.png',
              menuName: 'Cart',
              isActive: false,
              isNew: true,
              countNew: 2,
            ),
            MenuBottom(
              imageUrl: 'assets/ilove.png',
              menuName: 'Love',
              isActive: false,
              isNew: false,
              countNew: 0,
            ),
            MenuBottom(
              imageUrl: 'assets/profil.png',
              menuName: 'Profile',
              isActive: false,
              isNew: false,
              countNew: 0,
            ),
          ],
        ),
      ),
    );
  }
}
