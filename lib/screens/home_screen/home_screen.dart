import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/screens/home_screen/widgets/header_home_screen.dart';
import 'package:nectar/screens/home_screen/widgets/images_slider.dart';
import 'package:nectar/screens/home_screen/widgets/search_home_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
              HeaderHomeScreen(),
              SearchHomeScreen(),
              ImagesSlider(),
            ],
          ),
        ),
      ),
    );
  }
}
