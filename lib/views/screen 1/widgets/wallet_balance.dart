import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testproject/common/custome_title.dart';
import 'package:testproject/controllers/profile_controller.dart';

class WalletBalance extends ConsumerWidget {
  const WalletBalance({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final balance = ref.watch(walletBalanceProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomeTitle(
          text: "My Wallet Balance",
        ),
        Container(
          margin: EdgeInsets.only(top: 5.h),
          child: Text(
            "Rs. $balance",
            style: TextStyle(
              fontSize: 32.sp,
              fontWeight: FontWeight.w700,
              color: Colors.black,
              height: 1.h,
            ),
          ),
        ),
      ],
    );
  }
}
