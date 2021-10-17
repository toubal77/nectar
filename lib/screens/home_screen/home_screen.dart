import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/models/best_selling.dart';
import 'package:nectar/models/fruits.dart';
import 'package:nectar/models/groceries.dart';
import 'package:nectar/screens/home_screen/widgets/best_selling.dart';
import 'package:nectar/screens/home_screen/widgets/categories_groceries.dart';
import 'package:nectar/screens/home_screen/widgets/exclusive_offer.dart';
import 'package:nectar/screens/home_screen/widgets/header_actualite.dart';
import 'package:nectar/screens/home_screen/widgets/header_home_screen.dart';
import 'package:nectar/screens/home_screen/widgets/images_slider.dart';
import 'package:nectar/screens/home_screen/widgets/search_home_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
            child: Column(
              children: [
                HeaderHomeScreen(),
                SearchHomeScreen(),
                ImagesSlider(),
                HeaderActualite(title: 'Exclusive Offer'),
                SizedBox(
                  height: 248.51.h,
                  width: MediaQuery.of(context).size.width.w,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: AllFruits().allFruits.length,
                    itemBuilder: (context, index) {
                      return ExclusiveOffer(
                        fruit: AllFruits().allFruits[index],
                      );
                    },
                  ),
                ),
                HeaderActualite(title: 'Best Selling'),
                SizedBox(
                  height: 248.51.h,
                  width: MediaQuery.of(context).size.width.w,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: AllBestSelling().allBestSelling.length,
                    itemBuilder: (context, index) {
                      return BestSellingg(
                        best: AllBestSelling().allBestSelling[index],
                      );
                    },
                  ),
                ),
                HeaderActualite(title: 'Groceries'),
                SizedBox(
                  height: 105.h,
                  width: MediaQuery.of(context).size.width.w,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: AllCategories().allCategories.length,
                    itemBuilder: (context, index) {
                      return CategoriesGroceries(
                        categ: AllCategories().allCategories[index],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
