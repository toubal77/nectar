class Favorites {
  String name;
  String image;
  String details;
  List<String> nutrition;
  double price;
  String detailSale;

  Favorites({
    required this.name,
    required this.image,
    required this.details,
    required this.detailSale,
    required this.nutrition,
    required this.price,
  });
}

class AllFavorites {
  List<Favorites> allFavorites = [
    Favorites(
      name: 'Spritte can',
      image: 'assets/images/Beverages/Spritte can.png',
      details:
          'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
      detailSale: '7pcs, Priceg',
      nutrition: [
        '1.06gProtéines',
        '19.7g Glucides',
        '<O.5g Lipides',
        '2.7g Fibres amlimentaires'
      ],
      price: 1.50,
    ),
    Favorites(
      name: 'Bell Pepper Red',
      image: 'assets/images/BestSelling/Bell Pepper Red.png',
      details:
          'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
      detailSale: '7pcs, Priceg',
      nutrition: [
        '1.06gProtéines',
        '19.7g Glucides',
        '<O.5g Lipides',
        '2.7g Fibres amlimentaires'
      ],
      price: 4.59,
    ),
    Favorites(
      name: 'Ginder',
      image: 'assets/images/BestSelling/Ginder.png',
      details:
          'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
      detailSale: '250gm, Price',
      nutrition: [
        '1.06gProtéines',
        '19.7g Glucides',
        '<O.5g Lipides',
        '2.7g Fibres amlimentaires'
      ],
      price: 2.99,
    ),
    Favorites(
      name: 'Egg Noodles',
      image: 'assets/images/Eggs/Egg Noodles.png',
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
    Favorites(
      name: 'Egg Noodles',
      image: 'assets/images/Eggs/Egg Noodles 2.png',
      details:
          'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
      detailSale: '7pcs, Priceg',
      nutrition: [
        '1.06gProtéines',
        '19.7g Glucides',
        '<O.5g Lipides',
        '2.7g Fibres amlimentaires'
      ],
      price: 8.99,
    ),
  ];
}
