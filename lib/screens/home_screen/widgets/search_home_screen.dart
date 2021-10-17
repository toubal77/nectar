import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchHomeScreen extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();

  SearchHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 51.57.h,
      width: 364.w,
      margin: const EdgeInsets.only(top: 2, left: 16, right: 16, bottom: 5),
      child: TextField(
        textAlign: TextAlign.left,
        controller: _searchController,
        style: TextStyle(
          color: Color(0xff7C7C7C),
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        decoration: InputDecoration(
          hintText: "Search Store",
          hintStyle: TextStyle(
            color: Color(0xff7C7C7C),
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
          prefixIcon: Icon(
            Icons.search,
            color: Color(0xff181B19),
            size: 28,
          ),
          filled: true,
          fillColor: Color(0xffF2F3F2),
          contentPadding: EdgeInsets.all(8),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Color(0xffF2F3F2),
            ),
          ),
        ),
      ),
    );
  }
}
