import 'package:flutter/material.dart';

class Explore {
  final String name;
  final String image;
  final Color color;
  final Color colorBorder;
  Explore({
    required this.name,
    required this.image,
    required this.color,
    required this.colorBorder,
  });
}

class AllExplores {
  List<Explore> allExplores = [
    Explore(
      name: 'Frash Fruits & Vegetable',
      image: 'assets/images/explore/pngfuel 6.png',
      color: Color.fromRGBO(83, 177, 117, 0.1),
      colorBorder: Color.fromRGBO(83, 177, 117, 0.7),
    ),
    Explore(
      name: 'Cooking Oil & Ghee',
      image: 'assets/images/explore/pngfuel 8.png',
      color: Color.fromRGBO(248, 164, 76, 0.1),
      colorBorder: Color.fromRGBO(248, 164, 76, 0.7),
    ),
    Explore(
      name: 'Meat & Fish',
      image: 'assets/images/explore/pngfuel 9.png',
      color: Color.fromRGBO(247, 165, 147, 0.25),
      colorBorder: Color(0xffF7A593),
    ),
    Explore(
      name: 'Bakery & Snacks',
      image: 'assets/images/explore/pngfuel 6 (1).png',
      color: Color.fromRGBO(211, 176, 224, 0.25),
      colorBorder: Color(0xffD3B0E0),
    ),
    Explore(
      name: 'Dairy & Eggs',
      image: 'assets/images/explore/pngfuel.png',
      color: Color.fromRGBO(253, 229, 152, 0.25),
      colorBorder: Color(0xffFDE598),
    ),
    Explore(
      name: 'Beverages',
      image: 'assets/images/explore/pngfuel 6 (2).png',
      color: Color.fromRGBO(183, 223, 245, 0.25),
      colorBorder: Color(0xffB7DFF5),
    ),
    Explore(
      name: 'Frash Fruits & Vegetable',
      image: 'assets/images/explore/pngfuel 6.png',
      color: Color.fromRGBO(83, 177, 117, 0.1),
      colorBorder: Color.fromRGBO(83, 177, 117, 0.7),
    ),
    Explore(
      name: 'Cooking Oil & Ghee',
      image: 'assets/images/explore/pngfuel 8.png',
      color: Color.fromRGBO(248, 164, 76, 0.1),
      colorBorder: Color.fromRGBO(248, 164, 76, 0.7),
    ),
  ];
}
