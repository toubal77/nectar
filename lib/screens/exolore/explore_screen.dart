import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/models/explore.dart';
import 'package:nectar/screens/exolore/widgets/explore_items.dart';
import 'package:nectar/screens/home_screen/widgets/search_home_screen.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: 126.w,
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              child: Text(
                'Find Products',
                style: TextStyle(
                  color: Color(0xff181725),
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SearchHomeScreen(),
            Expanded(
              child: GridView.builder(
                itemCount: AllExplores().allExplores.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return ExploreDetails(item: AllExplores().allExplores[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
