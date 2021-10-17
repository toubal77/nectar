import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final TextEditingController _searchController = TextEditingController();
  final List<String> imgList = [
    'assets/images/Mask Group2.png',
    'assets/images/carousel image.jpg',
    'assets/images/carousel image 2.jpg',
    'assets/images/carousel image 3.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 10, bottom: 10, left: 12, right: 12),
          child: Column(
            children: [
              SizedBox(
                height: 90.h,
                width: MediaQuery.of(context).size.width.w,
                child: Column(
                  children: [
                    SizedBox(
                      width: 40.w,
                      height: 40.h,
                      child: Image.asset(
                        'assets/icons/carotte_color.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    SizedBox(
                      width: 162.57.w,
                      height: 22.69.h,
                      child: Row(
                        children: [
                          Container(
                            height: 18.17,
                            width: 15.13,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/icons/Exclude.png'),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 7.44,
                          ),
                          Text(
                            'Oran, Algeria',
                            style: TextStyle(
                              color: Color(0xff4C4F4D),
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 51.57.h,
                width: 364.w,
                margin: const EdgeInsets.only(
                    top: 2, left: 16, right: 16, bottom: 5),
                child: TextField(
                  textAlign: TextAlign.left,
                  controller: _searchController,
                  style: TextStyle(
                    color: Color(0xff7C7C7C),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  decoration: InputDecoration(
                    hintText: "Search Store",
                    hintStyle: TextStyle(
                      color: Color(0xff7C7C7C),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color(0xff181B19),
                      size: 28,
                    ),
                    filled: true,
                    fillColor: Color(0xffF2F3F2),
                    contentPadding: EdgeInsets.all(8),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Color(0xffF2F3F2),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
