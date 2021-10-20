import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomAllCart extends StatelessWidget {
  const BottomAllCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width.w,
      height: 67.h,
      margin: const EdgeInsets.only(top: 10, left: 25, right: 25, bottom: 10),
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
    );
  }
}
