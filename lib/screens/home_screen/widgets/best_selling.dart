import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/models/best_selling.dart';

class BestSellingg extends StatelessWidget {
  final BestSelling best;
  const BestSellingg({Key? key, required this.best}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 153.32.w,
      height: 248.51.h,
      margin: const EdgeInsets.only(right: 18, top: 18),
      decoration: BoxDecoration(
        //color: Colors.grey,
        borderRadius: BorderRadius.circular(19),
        border: Border.all(
          color: Colors.grey.shade400.withOpacity(0.6),
          width: 1,
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: Image.asset(best.image),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 140.w,
                    child: Text(
                      best.name,
                      style: TextStyle(
                        color: Color(0xff181725),
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.1,
                        fontSize: 18,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    width: 80.w,
                    child: Text(
                      best.detailSale,
                      style: TextStyle(
                        color: Color(0xff7C7C7C),
                        fontSize: 14,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 15, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$${best.price}',
                          style: TextStyle(
                            color: Color(0xff181725),
                            letterSpacing: 0.1,
                            fontSize: 18,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 35.67.w,
                            height: 35.67.h,
                            decoration: BoxDecoration(
                              color: Color(0xff53B175),
                              borderRadius: BorderRadius.circular(17),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
