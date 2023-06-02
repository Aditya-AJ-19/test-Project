import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Positioned(
            top: 15,
            bottom: 32,
            child: SizedBox(
              height: 82.h,
              width: 312.w,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 31.w),
                height: 60.h,
                width: 312.w,
                decoration: BoxDecoration(
                  color: const Color(0xffF5F4F6),
                  borderRadius: BorderRadius.circular(94.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 38.h,
                      width: 52.w,
                      child: Image.asset(
                        "assets/images/setting_icon.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      height: 38.h,
                      width: 52.w,
                      child: Image.asset(
                        "assets/images/cart _icon.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 115.w,
            top: 0.h,
            child: Container(
              padding: EdgeInsets.all(4.5.sp),
              height: 100.h,
              width: 100.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.r),
                color: Colors.white,
              ),
              child: Container(
                padding: EdgeInsets.all(21.sp),
                height: 82.h,
                width: 82.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(51.r),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xffED8F03),
                      Color(0xffFFB75E),
                    ],
                    end: Alignment.bottomCenter,
                    begin: Alignment.topCenter,
                  ),
                ),
                child: Image.asset(
                  "assets/images/barcode.png",
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
