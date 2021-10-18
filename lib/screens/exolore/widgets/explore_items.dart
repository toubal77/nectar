import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/screens/exolore/details_explore/details_explore.dart';

class ExploreDetails extends StatelessWidget {
  final dynamic item;
  const ExploreDetails({Key? key, this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (conntext) {
            return DetailExplore(items: item);
          }),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(8),
        width: 174.5.w,
        height: 178.11.h,
        decoration: BoxDecoration(
          color: item.color,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            color: item.colorBorder,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 100.h,
              child: Center(
                child: Image.asset(
                  item.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 43.3.h,
              width: 93.w,
              child: Text(
                item.name,
                style: TextStyle(
                  color: Color(0xff181725),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.1,
                ),
                overflow: TextOverflow.clip,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
