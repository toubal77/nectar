import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/models/favorite.dart';
import 'package:nectar/screens/favorite_screen/widget/bottom_all_cart.dart';
import 'package:nectar/screens/favorite_screen/widget/favorite_item.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 15, bottom: 25),
              child: Text(
                'Favorite',
                style: TextStyle(
                  color: Color(0xff181725),
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 15),
              child: Divider(
                height: 2,
                color: Color(0xFFA1A1A1),
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: AllFavorites().allFavorites.length,
                itemBuilder: (context, index) {
                  return FavoriteItem(
                    item: AllFavorites().allFavorites[index],
                  );
                },
              ),
            ),
            BottomAllCart(),
          ],
        ),
      ),
    );
  }
}
