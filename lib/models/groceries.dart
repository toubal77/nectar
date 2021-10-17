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
