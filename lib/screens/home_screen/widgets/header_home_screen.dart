import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderHomeScreen extends StatelessWidget {
  const HeaderHomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
