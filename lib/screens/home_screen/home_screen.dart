import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/models/fruits.dart';
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
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Exclusive Offer',
                        style: TextStyle(
                          color: Color(0xff181725),
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                          color: Color(0xff53B175),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 248.51.h,
                  width: MediaQuery.of(context).size.width.w,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: AllFruits().allFruits.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 153.32.w,
                        height: 248.51.h,
                        margin: const EdgeInsets.only(right: 18, top: 18),
                        decoration: BoxDecoration(
                          //color: Colors.grey,
                          borderRadius: BorderRadius.circular(19),
                          border: Border.all(
                            color: Colors.grey.shade400.withOpacity(0.6),
                            width: 1,
                          ),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Image.asset(
                                  AllFruits().allFruits[index].image),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 140.w,
                                      child: Text(
                                        AllFruits().allFruits[index].name,
                                        style: TextStyle(
                                          color: Color(0xff181725),
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 0.1,
                                          fontSize: 18,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 80.w,
                                      child: Text(
                                        AllFruits().allFruits[index].detailSale,
                                        style: TextStyle(
                                          color: Color(0xff7C7C7C),
                                          fontSize: 14,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          bottom: 15, top: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '\$${AllFruits().allFruits[index].price}',
                                            style: TextStyle(
                                              color: Color(0xff181725),
                                              letterSpacing: 0.1,
                                              fontSize: 18,
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {},
                                            child: Container(
                                              width: 35.67.w,
                                              height: 35.67.h,
                                              decoration: BoxDecoration(
                                                color: Color(0xff53B175),
                                                borderRadius:
                                                    BorderRadius.circular(17),
                                              ),
                                              child: Center(
                                                child: Icon(
                                                  Icons.add,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
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
