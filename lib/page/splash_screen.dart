import 'package:flutter/material.dart';
import 'package:pie_cake_dark/page/home_page.dart';
import 'package:pie_cake_dark/theme.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(
              41,
              20,
              41,
              0,
            ),
            child: Image.asset(
              'assets/chef.png',
              width: 293,
              height: 474,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/love.png',
                  width: 66,
                  height: 66,
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 0),
                height: 265,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: semiBlackColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'PieLove Anetto',
                        style: titleTextStyle,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Let\'s taste the Pie Cake made\nby Chef Bimo Semesta',
                        style: subTitleTextstyle,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        height: 55,
                        width: MediaQuery.of(context).size.width - (2 * 42),
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return HomePage();
                              }),
                            );
                          },
                          color: orangeColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text(
                            'Let’s Order',
                            style: titleTextStyle.copyWith(
                              fontSize: 20,
                              color: blackColor,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
