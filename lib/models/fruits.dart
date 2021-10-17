class Fruits {
  String name;
  String image;
  String details;
  List<String> nutrition;
  double price;
  String detailSale;

  Fruits({
    required this.name,
    required this.image,
    required this.details,
    required this.detailSale,
    required this.nutrition,
    required this.price,
  });
}

class AllFruits {
  List<Fruits> allFruits = [
    Fruits(
      name: 'Organic Bananas',
      image: 'assets/images/fruits/Organic Bananas.png',
      details:
          'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
      detailSale: '7pcs, Priceg',
      nutrition: [
        '1.06gProtéines',
        '19.7g Glucides',
        '<O.5g Lipides',
        '2.7g Fibres amlimentaires'
      ],
      price: 4.29,
    ),
    Fruits(
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
    Fruits(
      name: 'Bell Pepper Red',
      image: 'assets/images/fruits/Bell Pepper Red.png',
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
  ];
}
