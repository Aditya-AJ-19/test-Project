import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testproject/views/screen%201/widgets/bottom_nav_bar.dart';
import 'package:testproject/common/custome_title.dart';
import 'package:testproject/views/screen%201/widgets/offers.dart';
import 'package:testproject/views/screen%201/widgets/privious_order.dart';
import 'package:testproject/views/screen%201/widgets/profile.dart';
import 'package:testproject/views/screen%201/widgets/search_bar.dart';
import 'package:testproject/views/screen%201/widgets/search_container.dart';
import 'package:testproject/views/screen%201/widgets/wallet_balance.dart';
import 'package:testproject/views/screen%201/widgets/wallet_section.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              height: 344.h,
              width: 360.w,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xffED8F03),
                    Color(0xffFFB75E),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const ProfileInformation(),
                  SizedBox(
                    height: 16.h,
                  ),
                  const CustomeSearchBar(),
                ],
              ),
            ),
          ),
          Positioned(
            top: 200.h,
            bottom: 0.h,
            child: Container(
              height: 600.h,
              width: 360.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.r),
                  topRight: Radius.circular(30.r),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const WalletBalance(),
                    SizedBox(
                      height: 18.h,
                    ),
                    const WalletSection(),
                    const CustomeTitle(
                      text: "My Previous Orders",
                    ),
                    const PreviousOrder(),
                    const CustomeTitle(
                      text: "My Offers & Deals",
                    ),
                    const Offers(),
                    SizedBox(
                      height: 30.h,
                    ),
                    const BottomNavBar(),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 186.h,
            left: 30.w,
            child: const SearchContainer(),
          ),
        ],
      ),
    );
  }
}
