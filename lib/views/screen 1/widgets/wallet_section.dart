import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WalletSection extends StatelessWidget {
  const WalletSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 64.h,
          width: 148.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.r),
            color: const Color(0xffF5F4F6),
          ),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 18.w),
                height: 32.h,
                width: 32.h,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 2.5.sp,
                  ),
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Icon(
                  Icons.add,
                  color: const Color(0xffED8F03),
                  size: 19.33.h,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 8.w),
                child: Text(
                  "Add Money \nto Wallet",
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  // softWrap: true,
                  maxLines: 2,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 16.w,
        ),
        Container(
          height: 64.h,
          width: 148.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.r),
            color: const Color(0xffF5F4F6),
          ),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 18.w),
                height: 32.h,
                width: 32.h,
                child: Image.asset(
                  "assets/images/walletIcon.png",
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 8.w),
                child: Text(
                  "My Wallet\nStatement",
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  // softWrap: true,
                  maxLines: 2,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
