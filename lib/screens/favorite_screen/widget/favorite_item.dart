import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteItem extends StatelessWidget {
  final dynamic item;
  const FavoriteItem({Key? key, this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8, bottom: 8, left: 20, right: 20),
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
                child: Image.asset(item.image),
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
                        item.name,
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
                        item.detailSale,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$' + item.price.toString(),
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
  }
}
