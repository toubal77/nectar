import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/models/favorite.dart';

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
                  return Container(
                    padding: const EdgeInsets.only(
                        top: 8, bottom: 8, left: 20, right: 20),
                    width: MediaQuery.of(context).size.width.w,
                    height: 100.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 70.43.w,
                              height: 50.69.h,
                              child: Image.asset(
                                  AllFavorites().allFavorites[index].image),
                            ),
                            const SizedBox(width: 10),
                            SizedBox(
                              width: 165.02.w,
                              height: 50.69.h,
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: 183.02.w,
                                    height: 18.h,
                                    child: Text(
                                      AllFavorites().allFavorites[index].name,
                                      style: TextStyle(
                                        color: Color(0xff181725),
                                        letterSpacing: 0.1,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 183.02.w,
                                    height: 15.h,
                                    child: Text(
                                      AllFavorites()
                                          .allFavorites[index]
                                          .detailSale,
                                      style: TextStyle(
                                        color: Color(0xff7C7C7C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 85.43.w,
                              height: 50.69.h,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$' +
                                        AllFavorites()
                                            .allFavorites[index]
                                            .price
                                            .toString(),
                                    style: TextStyle(
                                      color: Color(0xff181725),
                                      letterSpacing: 0.1,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Icon(
                                      Platform.isIOS
                                          ? Icons.arrow_forward_ios
                                          : Icons.arrow_forward,
                                      color: Color(0xff181725),
                                      size: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 35),
                          child: Divider(
                            height: 2,
                            color: Color(0xFFA1A1A1),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width.w,
              height: 67.h,
              margin: const EdgeInsets.only(
                  top: 10, left: 25, right: 25, bottom: 10),
              decoration: BoxDecoration(
                color: Color(0xff53B175),
                borderRadius: BorderRadius.circular(19),
              ),
              child: Center(
                child: Text(
                  'Add All To Cart',
                  style: TextStyle(
                    color: Color(0xffFCFCFC),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
