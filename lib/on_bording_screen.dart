import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/screens/auth/singin_screen.dart';

class OnBordingScreen extends StatelessWidget {
  const OnBordingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/8140 1.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(14, 23, 39, 0).withOpacity(0),
                    Color(0xff858585).withOpacity(0.2),
                  ],
                  stops: [2.0, 4.0],
                  begin: FractionalOffset.centerLeft,
                  end: FractionalOffset.centerRight,
                  tileMode: TileMode.repeated,
                ),
              ),
              width: 414.w,
              height: 335.h,
              child: Column(
                children: [
                  SizedBox(
                    width: 48.47.w,
                    height: 56.36.h,
                    child: Image.asset('assets/icons/carotte.png'),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  SizedBox(
                    width: 253.w,
                    height: 90.h,
                    child: Text(
                      'Welcome to our store',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 48,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 19,
                  ),
                  SizedBox(
                    width: 295.w,
                    height: 15.h,
                    child: Text(
                      'Get your groceries in as fast one hour',
                      style: TextStyle(
                        color: Color(0xffFCFCFC).withOpacity(0.7),
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 40.88,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) {
                            return const SingInScreen();
                          },
                        ),
                      );
                    },
                    child: Container(
                      width: 353.w,
                      height: 67.h,
                      decoration: BoxDecoration(
                        color: Color(0xff53B175),
                        borderRadius: BorderRadius.circular(19),
                      ),
                      child: Center(
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                            color: Color(0xffFFF9FF),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
