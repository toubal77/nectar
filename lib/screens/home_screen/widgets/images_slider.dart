import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ImagesSlider extends StatelessWidget {
  ImagesSlider({Key? key}) : super(key: key);
  final List<String> imgList = [
    'assets/images/Mask Group2.png',
    'assets/images/carousel image.jpg',
    'assets/images/carousel image 2.jpg',
    'assets/images/carousel image 3.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 367.w,
      height: 114.99.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 2),
        ),
        items: imgList
            .map(
              (item) => Center(
                child: Image.asset(
                  item.toString(),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
