class Eggs {
  String name;
  String image;
  String details;
  List<String> nutrition;
  double price;
  String detailSale;

  Eggs({
    required this.name,
    required this.image,
    required this.details,
    required this.detailSale,
    required this.nutrition,
    required this.price,
  });
}

class AllEggs {
  List<Eggs> allEggs = [
    Eggs(
      name: 'Egg Chicken Red',
      image: 'assets/images/Eggs/Egg Chicken Red.png',
      details:
          'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
      detailSale: '7pcs, Priceg',
      nutrition: [
        '1.06gProtéines',
        '19.7g Glucides',
        '<O.5g Lipides',
        '2.7g Fibres amlimentaires'
      ],
      price: 1.99,
    ),
    Eggs(
      name: 'Egg Chicken White',
      image: 'assets/images/Eggs/Egg Chicken White.png',
      details:
          'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
      detailSale: '335ml, Priceg',
      nutrition: [
        '1.06gProtéines',
        '19.7g Glucides',
        '<O.5g Lipides',
        '2.7g Fibres amlimentaires'
      ],
      price: 1.50,
    ),
    Eggs(
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
    Eggs(
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
    Eggs(
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
    Eggs(
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
