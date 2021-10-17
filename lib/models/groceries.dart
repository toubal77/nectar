import 'package:flutter/material.dart';

class Categories {
  String name;
  String image;
  Color color;
  Categories({
    required this.name,
    required this.image,
    required this.color,
  });
}

class Groceries {
  String name;
  String image;
  String details;
  List<String> nutrition;
  double price;
  String detailSale;

  Groceries({
    required this.name,
    required this.image,
    required this.details,
    required this.detailSale,
    required this.nutrition,
    required this.price,
  });
}

class AllCategories {
  List<Categories> allCategories = [
    Categories(
      name: 'Pulses',
      image: 'assets/images/groceries/Pulses.png',
      color: Color(0xffF8A44C).withOpacity(0.20),
    ),
    Categories(
      name: 'Rice',
      image: 'assets/images/groceries/Rice.png',
      color: Color(0xff53B175).withOpacity(0.15),
    ),
  ];
}

class AllGrocies {
  List<Groceries> allGrocies = [
    Groceries(
      name: 'Beef Bone',
      image: 'assets/images/Groceries/Beef Bone.png',
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
    Groceries(
      name: 'Broiler Chicken',
      image: 'assets/images/Groceries/Broiler Chicken.png',
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
    Groceries(
      name: 'Beef Bone',
      image: 'assets/images/Groceries/Beef Bone.png',
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
  ];
}
