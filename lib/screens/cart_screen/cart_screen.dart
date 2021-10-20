import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/models/cart.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int _quant = 1;
  void _quantDelete() {
    if (_quant > 1) {
      setState(() {
        _quant--;
      });
    }
  }

  void _quantAdd() {
    if (_quant >= 1) {
      setState(() {
        _quant++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 15, bottom: 25),
              child: Text(
                'My Cart',
                style: TextStyle(
                  color: Color(0xff181725),
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 15),
              child: Divider(
                height: 2,
                color: Color(0xFFA1A1A1),
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: AllCart().allCart.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.only(
                        top: 8, bottom: 8, left: 20, right: 20),
                    width: MediaQuery.of(context).size.width.w,
                    height: 170.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 70.43.w,
                              height: 64.69.h,
                              child:
                                  Image.asset(AllCart().allCart[index].image),
                            ),
                            SizedBox(
                              width: 195.02.w,
                              height: 85.69.h,
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: 183.02.w,
                                    height: 18.h,
                                    child: Text(
                                      AllCart().allCart[index].name +
                                          'fdohi reoh oreh reoh rohei  rohze rhoei hor',
                                      style: TextStyle(
                                        color: Color(0xff181725),
                                        letterSpacing: 0.1,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 183.02.w,
                                    height: 15.h,
                                    child: Text(
                                      AllCart().allCart[index].detailSale,
                                      style: TextStyle(
                                        color: Color(0xff7C7C7C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 13,
                                  ),
                                  SizedBox(
                                    width: 183.02.w,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 119.w,
                                          height: 40.67.h,
                                          child: Row(
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  _quantDelete();
                                                },
                                                child: Icon(
                                                  Icons.remove,
                                                  color: Color(0xff53B175),
                                                  size: 28,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 40.67.w,
                                                height: 40.67.h,
                                                child: Center(
                                                  child: Text(
                                                    _quant.toString(),
                                                    style: TextStyle(
                                                      color: Color(0xff181725),
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  _quantAdd();
                                                },
                                                child: Icon(
                                                  Icons.add,
                                                  color: Color(0xff53B175),
                                                  size: 28,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 70.43.w,
                              height: 85.69.h,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.multiple_stop,
                                      color: Color(0xffB3B3B3),
                                      size: 26,
                                    ),
                                  ),
                                  Text(
                                    '\$' +
                                        AllCart()
                                            .allCart[index]
                                            .price
                                            .toString(),
                                    style: TextStyle(
                                      color: Color(0xff181725),
                                      letterSpacing: 0.1,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 35),
                          child: Divider(
                            height: 2,
                            color: Color(0xFFA1A1A1),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width.w,
              height: 67.h,
              margin: const EdgeInsets.only(
                  top: 10, left: 25, right: 25, bottom: 10),
              decoration: BoxDecoration(
                color: Color(0xff53B175),
                borderRadius: BorderRadius.circular(19),
              ),
              child: Center(
                child: Text(
                  'Go to Checkout',
                  style: TextStyle(
                    color: Color(0xffFCFCFC),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
