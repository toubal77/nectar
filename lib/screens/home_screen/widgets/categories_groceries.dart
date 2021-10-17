import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/models/groceries.dart';

class CategoriesGroceries extends StatelessWidget {
  final Categories categ;
  const CategoriesGroceries({Key? key, required this.categ}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 248.19.w,
      height: 105.h,
      margin: const EdgeInsets.only(right: 18, top: 18),
      padding: const EdgeInsets.only(left: 17, right: 10),
      decoration: BoxDecoration(
        color: categ.color,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Image.asset(
            categ.image,
            width: 71.9.w,
            height: 71.9.h,
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            categ.name,
            style: TextStyle(
              color: Color(0xff3E423F),
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
