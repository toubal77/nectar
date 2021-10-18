import 'dart:io';
import 'package:flutter/material.dart';
import 'package:nectar/models/beverages.dart';
import 'package:nectar/models/egg.dart';
import 'package:nectar/screens/home_screen/widgets/product_item.dart';

class DetailExplore extends StatelessWidget {
  final dynamic items;
  final bool eggs;
  const DetailExplore({Key? key, this.items, required this.eggs})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Details',
          style: TextStyle(
            color: Color(0xff181725),
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Platform.isIOS
              ? Icon(
                  Icons.arrow_back_ios,
                  color: Color(0xff181725),
                )
              : Icon(
                  Icons.arrow_back,
                  color: Color(0xff181725),
                ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(
                Icons.filter_list,
                color: Color(0xff181725),
              ),
            ),
          ),
        ],
      ),
      body: GridView.builder(
        itemCount: eggs
            ? AllEggs().allEggs.length
            : AllBeverages().allBeverages.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return ProductItem(
            item: eggs
                ? AllEggs().allEggs[index]
                : AllBeverages().allBeverages[index],
          );
        },
      ),
    );
  }
}
