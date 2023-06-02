import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListChild extends StatelessWidget {
  final String name;
  final String image;
  const ListChild({
    Key? key,
    required this.name,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.w),
      child: Column(
        children: [
          Container(
            height: 64.h,
            width: 64.h,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: const Color(0xff6C757D),
              ),
              borderRadius: BorderRadius.circular(32.r),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(32.r),
              child: CachedNetworkImage(
                imageUrl: image,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 4.h),
            height: 26.h,
            width: 63.w,
            child: Text(
              name,
              textAlign: TextAlign.center,
              overflow: TextOverflow.clip,
              style: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black,
                height: 1.2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
