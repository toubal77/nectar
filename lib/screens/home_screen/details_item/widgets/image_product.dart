import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/screens/home_screen/details_item/detail_item.dart';

class ImageProduct extends StatelessWidget {
  const ImageProduct({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final DetailScreen widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width.w,
      height: 371.44.h,
      decoration: BoxDecoration(
        color: Color(0xffF2F3F2),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
        image: DecorationImage(
          image: AssetImage(widget.itemDetail.image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
