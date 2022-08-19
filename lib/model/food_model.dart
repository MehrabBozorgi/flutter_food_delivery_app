class FoodModel {
  final String title;
  final String imagePath;
  final String name;
  final String price;

  FoodModel({
    required this.title,
    required this.imagePath,
    required this.name,
    required this.price,
  });

  static List<FoodModel> foodModel = [
    FoodModel(
      title: 'Bacon Cheese Burger',
      imagePath: 'pic1.png',
      name: 'Cheese Burger',
      price: '\$12.99',
    ),
    FoodModel(
      title: 'Double Patty Burger',
      imagePath: 'pic2.png',
      name: 'Meat Burger',
      price: '\$8.5',
    ),
    FoodModel(
      title: 'Luger Burger',
      imagePath: 'pic3.png',
      name: 'Veggie Burger',
      price: '\$6.00',
    ),
    FoodModel(
      title: 'Classic Burger',
      imagePath: 'pic1.png',
      name: 'Burger For Kids',
      price: '\$15.85',
    ),
  ];
}
