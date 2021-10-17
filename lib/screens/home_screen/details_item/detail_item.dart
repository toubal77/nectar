import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailScreen extends StatefulWidget {
  final dynamic itemDetail;
  const DetailScreen({Key? key, this.itemDetail}) : super(key: key);
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int _quant = 1;
  bool isFavorite = false;
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
            Container(
              width: MediaQuery.of(context).size.width.w,
              height: 371.44.h,
              decoration: BoxDecoration(
                color: Color(0xffF2F3F2),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
                image: DecorationImage(
                  image: AssetImage(widget.itemDetail.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width.w,
              margin: const EdgeInsets.only(
                  left: 20, right: 20, top: 20, bottom: 10),
              height: 115.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 209.w,
                              child: Text(
                                widget.itemDetail.name,
                                style: TextStyle(
                                  color: Color(0xff181725),
                                  fontSize: 24,
                                  letterSpacing: 0.1,
                                  fontWeight: FontWeight.w600,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            SizedBox(
                              width: 82.59.w,
                              child: Text(
                                widget.itemDetail.detailSale,
                                style: TextStyle(
                                  color: Color(0xff7C7C7C),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 40),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isFavorite = !isFavorite;
                              });
                            },
                            child: Icon(
                              isFavorite
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: isFavorite ? Colors.red : null,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 119.w,
                          height: 45.67.h,
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
                              Container(
                                width: 45.67.w,
                                height: 45.67.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17),
                                  border: Border.all(
                                    color: Color(0xff181725).withOpacity(0.5),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    _quant.toString(),
                                    style: TextStyle(
                                      color: Color(0xff181725),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
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
                        Text(
                          '\$${widget.itemDetail.price}',
                          style: TextStyle(
                            color: Color(0xff181725),
                            fontSize: 24,
                            letterSpacing: 0.1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
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
              height: 75.h,
              margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 108.5.w,
                        child: Text(
                          'Product Detail',
                          style: TextStyle(
                            color: Color(0xff181725),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Icon(
                        Icons.expand_more,
                        size: 26,
                      ),
                    ],
                  ),
                  Text(
                    widget.itemDetail.details,
                    style: TextStyle(
                      color: Color(0xff7C7C7C),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
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
