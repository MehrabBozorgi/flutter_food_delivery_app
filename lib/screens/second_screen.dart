import 'package:flutter/material.dart';
import 'package:flutter_order_food_ui/tools/border.dart';
import 'package:flutter_order_food_ui/tools/colors.dart';

import '../tools/styles.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    const String desc =
        'In Wisconsin, many claim the burger was invented by Charlie Nagreen, who purportedly sold a meatball between two slices of bread at an 1885 fair in Seymour. In Athens, Tex.';
    return Container(
      color: darkColor,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: backGroundColor,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: height * 0.03),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: width*0.02),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.arrow_back,
                            color: darkColor,
                            size: width * 0.08,
                          ),
                          Icon(
                            Icons.shopping_bag_outlined,
                            color: darkColor,
                            size: width * 0.08,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 0.03,
                        vertical: height * 0.01,
                      ),
                      child: const Text(
                        'Cheese\nBurger',
                        style: textStyle1,
                      ),
                    ),
                    Container(
                      width: width,
                      height: height * 0.5,
                      child: Stack(
                        children: [
                          Positioned(
                            right: -135,
                            child: Image.asset(
                              'pic1.png',
                              height: height * 0.45,
                            ),
                          ),
                          Positioned(
                            left: -25,
                            top: 45,
                            child: Container(
                              width: width * 0.1,
                              height: height * 0.3,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: getBorderRadiusWidget(context, 1),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 65,
                            left: 25,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Sugar',
                                      style: textStyle4,
                                    ),
                                    Text(
                                      '4.9 g',
                                      style: textStyle3,
                                    ),
                                  ],
                                ),
                                SizedBox(height: height * 0.03),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Vitamin',
                                      style: textStyle4,
                                    ),
                                    Text(
                                      '12%',
                                      style: textStyle3,
                                    ),
                                  ],
                                ),
                                SizedBox(height: height * 0.03),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Fat',
                                      style: textStyle4,
                                    ),
                                    Text(
                                      '17 g',
                                      style: textStyle3,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.04,
                    vertical: height * 0.02,
                  ),
                  width: width,
                  decoration: BoxDecoration(
                    color: darkColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(width * 0.05),
                      topLeft: Radius.circular(width * 0.05),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            '\$12.50',
                            style: textStyle7,
                          ),
                          Container(
                            padding: EdgeInsets.all(width * 0.03),
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius:
                                  getBorderRadiusWidget(context, 0.03),
                            ),
                            child: const Icon(
                              Icons.shopping_bag_outlined,
                              color: darkColor,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: width * 0.02,
                          vertical: height * 0.01,
                        ),
                        child: const Text(
                          desc,
                          style: textStyle8,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
