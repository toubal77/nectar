import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderProduct extends StatefulWidget {
  final dynamic product;
  const HeaderProduct({Key? key, this.product}) : super(key: key);

  @override
  State<HeaderProduct> createState() => _HeaderProductState();
}

class _HeaderProductState extends State<HeaderProduct> {
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
    return Container(
      width: MediaQuery.of(context).size.width.w,
      margin: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
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
                        widget.product.name,
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
                        widget.product.detailSale,
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
                      isFavorite ? Icons.favorite : Icons.favorite_border,
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
                  '\$${widget.product.price}',
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
    );
  }
}
