class Cart {
  String name;
  String image;
  String details;
  List<String> nutrition;
  double price;
  String detailSale;

  Cart({
    required this.name,
    required this.image,
    required this.details,
    required this.detailSale,
    required this.nutrition,
    required this.price,
  });
}

class AllCart {
  List<Cart> allCart = [
    Cart(
      name: 'Mayonnais Eggless',
      image: 'assets/images/Eggs/Mayonnais Eggless.png',
      details:
          'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
      detailSale: '7pcs, Priceg',
      nutrition: [
        '1.06gProtéines',
        '19.7g Glucides',
        '<O.5g Lipides',
        '2.7g Fibres amlimentaires'
      ],
      price: 5.99,
    ),
    Cart(
      name: 'Red Apple',
      image: 'assets/images/fruits/Red Apple.png',
      details:
          'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
      detailSale: '1kg, Priceg',
      nutrition: [
        '1.06gProtéines',
        '19.7g Glucides',
        '<O.5g Lipides',
        '2.7g Fibres amlimentaires'
      ],
      price: 4.99,
    ),
    Cart(
      name: 'Diet Coke',
      image: 'assets/images/Beverages/Diet Coke.png',
      details:
          'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
      detailSale: '335ml, Priceg',
      nutrition: [
        '1.06gProtéines',
        '19.7g Glucides',
        '<O.5g Lipides',
        '2.7g Fibres amlimentaires'
      ],
      price: 1.99,
    ),
    Cart(
      name: 'Broiler Chicken',
      image: 'assets/images/groceries/Broiler Chicken.png',
      details:
          'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
      detailSale: '1kg, Priceg',
      nutrition: [
        '1.06gProtéines',
        '19.7g Glucides',
        '<O.5g Lipides',
        '2.7g Fibres amlimentaires'
      ],
      price: 4.99,
    ),
    Cart(
      name: 'Egg Pasta',
      image: 'assets/images/Eggs/Egg Pasta.png',
      details:
          'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
      detailSale: '7pcs, Priceg',
      nutrition: [
        '1.06gProtéines',
        '19.7g Glucides',
        '<O.5g Lipides',
        '2.7g Fibres amlimentaires'
      ],
      price: 15.99,
    ),
  ];
}
