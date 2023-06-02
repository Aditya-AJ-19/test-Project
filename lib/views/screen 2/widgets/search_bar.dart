import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomeSearchBarPD extends StatelessWidget {
  const CustomeSearchBarPD({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return Container(
      height: 42.h,
      width: 262.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            width: 12.w,
          ),
          Container(
            margin: EdgeInsets.only(bottom: 12.6.h),
            height: 17.h,
            width: 17.w,
            child: const Icon(Icons.search),
          ),
          Container(
            margin: EdgeInsets.only(left: 12.w, bottom: 2.h),
            height: 20.h,
            width: 176.w,
            child: TextFormField(
              controller: searchController,
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
              decoration: InputDecoration(
                focusColor: Colors.white,
                hintText: "Search",
                border: InputBorder.none,
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.17.sp),
            height: 38.h,
            width: 38.h,
            margin: EdgeInsets.only(left: 5.w, bottom: 2.h),
            decoration: BoxDecoration(
              color: const Color(0xff6C757D),
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Image.asset(
              "assets/images/barcode.png",
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
