import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testproject/views/screen%203/widgets/light_text.dart';

class SingleStepper extends StatelessWidget {
  final String title;
  final List info;
  const SingleStepper({
    Key? key,
    required this.title,
    required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 5.h),
          height: 26.h,
          width: 312.w,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        SizedBox(
          height: 13.h,
        ),
        Container(
          margin: EdgeInsets.only(left: 6.w),
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 5.h),
          decoration: const BoxDecoration(
            border: Border(
              left: BorderSide(
                color: Color(0xffED8F03),
                width: 4,
              ),
            ),
          ),
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 3.w, right: 5.w),
              height: 10.h,
              width: 10.h,
              decoration: BoxDecoration(
                  color: const Color(0xffED8F03),
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black)),
            ),
            Text(
              info[0],
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 13.sp,
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(left: 6.w),
          padding: EdgeInsets.symmetric(
            horizontal: 14.w,
          ).copyWith(top: 12.h, bottom: 24.h),
          decoration: const BoxDecoration(
            border: Border(
              left: BorderSide(
                color: Color(0xffED8F03),
                width: 4,
              ),
            ),
          ),
          child: Row(
            children: [
              Container(
                width: 68.w,
                height: 48.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: CachedNetworkImage(imageUrl: info[4]),
              ),
              Container(
                padding: EdgeInsets.only(left: 14.w, top: 2.h),
                height: 48.h,
                width: 220.w,
                // color: Colors.blue,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomeLiteText(text: info[1]),
                    CustomeLiteText(text: "Date : ${info[2]}"),
                    CustomeLiteText(text: "Location : ${info[3]}"),
                  ],
                ),
              )
            ],
          ),
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 3.w, right: 5.w),
              height: 10.h,
              width: 10.h,
              decoration: BoxDecoration(
                  color: const Color(0xffED8F03),
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black)),
            ),
            Text(
              info[5],
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 13.sp,
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(left: 6.w),
          padding: EdgeInsets.symmetric(
            horizontal: 14.w,
          ).copyWith(top: 12.h, bottom: 24.h),
          decoration: const BoxDecoration(
            border: Border(
              left: BorderSide(
                color: Color(0xffED8F03),
                width: 4,
              ),
            ),
          ),
          child: Row(
            children: [
              Container(
                width: 68.w,
                height: 48.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: CachedNetworkImage(imageUrl: info[9]),
              ),
              Container(
                padding: EdgeInsets.only(left: 14.w, top: 2.h),
                height: 48.h,
                width: 220.w,
                // color: Colors.blue,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomeLiteText(text: info[6]),
                    CustomeLiteText(text: "Date : ${info[7]}"),
                    CustomeLiteText(text: "Location : ${info[8]}"),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
