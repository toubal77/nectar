import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/screens/home_screen/details_item/detail_item.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final DetailScreen widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.h,
      margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 108.5.w,
                child: Text(
                  'Product Detail',
                  style: TextStyle(
                    color: Color(0xff181725),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Icon(
                Icons.expand_more,
                size: 26,
              ),
            ],
          ),
          Text(
            widget.itemDetail.details,
            style: TextStyle(
              color: Color(0xff7C7C7C),
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
