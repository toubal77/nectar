import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/screens/auth/number_screen.dart';
import 'package:nectar/screens/auth/widgets/buttom_media.dart';

class SingInScreenChoose extends StatelessWidget {
  const SingInScreenChoose({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/Mask Group.png',
              height: 374.15.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: SizedBox(
                width: 222.w,
                height: 63.h,
                child: Text(
                  'Get your groceries with nectar',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff030303),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20.61,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const NumberScreen();
                    },
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.flag,
                          size: 35,
                          color: Colors.green,
                        ),
                        const SizedBox(
                          width: 12.02,
                        ),
                        Text(
                          '+213',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff030303),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Divider(
                      height: 3,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                'Or connect with social media',
                style: TextStyle(
                  color: Color(0xff828282),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 37.8,
            ),
            ButtomMedia(
              color: Color(0xff5383EC),
              iconName: 'google',
              text: 'Google',
            ),
            const SizedBox(
              height: 20,
            ),
            ButtomMedia(
              color: Color(0xff4A66AC),
              iconName: 'fb',
              text: 'Facebook',
            ),
          ],
        ),
      ),
    );
  }
}
