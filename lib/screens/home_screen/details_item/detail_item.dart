import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/screens/home_screen/details_item/widgets/header_product.dart';
import 'package:nectar/screens/home_screen/details_item/widgets/image_product.dart';
import 'package:nectar/screens/home_screen/details_item/widgets/product_detail.dart';

class DetailScreen extends StatefulWidget {
  final dynamic itemDetail;
  const DetailScreen({Key? key, this.itemDetail}) : super(key: key);
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Color(0x44FFFEFE),
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Platform.isIOS
              ? Icon(
                  Icons.arrow_back_ios,
                  color: Color(0xff181725),
                )
              : Icon(
                  Icons.arrow_back,
                  color: Color(0xff181725),
                ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Platform.isIOS
                ? Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Icon(
                      Icons.ios_share,
                      color: Color(0xff181725),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Icon(
                      Icons.share,
                      color: Color(0xff181725),
                    ),
                  ),
          ),
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageProduct(widget: widget),
            HeaderProduct(product: widget.itemDetail),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Divider(
                height: 2,
                color: Colors.grey.shade400,
              ),
            ),
            ProductDetails(widget: widget),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Divider(
                height: 2,
                color: Colors.grey.shade400,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 108.5,
                      child: Text(
                        'Nutritions',
                        style: TextStyle(
                          color: Color(0xff181725),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Icon(
                      Icons.navigate_next,
                      size: 26,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Divider(
                height: 2,
                color: Colors.grey.shade400,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: 15, left: 20, right: 20, bottom: 15),
              width: 364.w,
              height: 67.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(19),
                color: Color(0xff53B175),
              ),
              child: Center(
                child: Text(
                  'Add To Basket',
                  style: TextStyle(
                    color: Color(0xffFFF9FF),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
