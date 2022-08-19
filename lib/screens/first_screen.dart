import 'package:flutter/material.dart';
import 'package:flutter_order_food_ui/model/food_model.dart';
import 'package:flutter_order_food_ui/tools/border.dart';
import 'package:flutter_order_food_ui/tools/colors.dart';

import '../tools/styles.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: backGroundColor,
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.03,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.menu_rounded,
                          color: darkColor,
                          size: width * 0.07,
                        ),
                        Icon(
                          Icons.search,
                          color: darkColor,
                          size: width * 0.07,
                        ),
                      ],
                    ),
                    const Text(
                      'Favorites',
                      style: textStyle2,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(width * 0.1),
                    topLeft: Radius.circular(width * 0.1),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: height * 0.03),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(width: width * 0.03),
                            MenuWidgets(
                              width: width,
                              color: darkColor,
                              title: 'BURGERS',
                              image: 'burger',
                            ),
                            MenuWidgets(
                              width: width,
                              color: Colors.white38,
                              title: 'PIZZA',
                              image: 'pizza',
                            ),
                            MenuWidgets(
                              width: width,
                              color: Colors.white38,
                              title: 'DRINKS',
                              image: 'drink',
                            ),
                            MenuWidgets(
                              width: width,
                              color: Colors.white38,
                              title: 'DESSERT',
                              image: 'dessert',
                            ),
                            MenuWidgets(
                              width: width,
                              color: Colors.white38,
                              title: 'SNACKS',
                              image: 'snacks',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: height * 0.03),
                      SizedBox(
                        width: width,
                        height: height,
                        child: ListView.builder(
                          itemCount: FoodModel.foodModel.length,
                          itemBuilder: (context, index) {
                            return Card(
                              shape: getShapeWidget(context, 0.05),
                              color: backGroundColor,
                              margin: EdgeInsets.symmetric(
                                horizontal: width * 0.03,
                                vertical: height * 0.01,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Image.asset(
                                      FoodModel.foodModel[index].imagePath,
                                      width: width * 0.19,
                                      height: height * 0.15,
                                    ),
                                  ),
                                  SizedBox(width: width * 0.02),
                                  Expanded(
                                    flex: 3,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          FoodModel.foodModel[index].title,
                                          style: textStyle3,
                                        ),
                                        Text(
                                          FoodModel.foodModel[index].name,
                                          style: textStyle4,
                                        ),
                                        Text(
                                          FoodModel.foodModel[index].price,
                                          style: textStyle3,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(width * 0.025),
                                    margin:
                                        EdgeInsets.only(right: width * 0.03),
                                    decoration: BoxDecoration(
                                      color: darkColor,
                                      borderRadius:
                                          getBorderRadiusWidget(context, 0.03),
                                    ),
                                    child: const Icon(
                                      Icons.shopping_bag_outlined,
                                      color: backGroundColor,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuWidgets extends StatelessWidget {
  const MenuWidgets({
    Key? key,
    required this.width,
    required this.title,
    required this.image,
    required this.color,
  }) : super(key: key);

  final double width;
  final String title;
  final String image;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(width * 0.03),
          margin: EdgeInsets.symmetric(horizontal: width * 0.03),
          decoration: BoxDecoration(
            color: color,
            borderRadius: getBorderRadiusWidget(context, 1),
          ),
          child: Image.asset(
            '$image.png',
            width: width * 0.08,
            height: width * 0.08,
          ),
        ),
        Text(
          title,
          style: textStyle6,
        )
      ],
    );
  }
}
