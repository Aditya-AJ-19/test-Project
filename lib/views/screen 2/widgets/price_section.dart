import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testproject/common/custome_title.dart';

class PriceSection extends StatefulWidget {
  final int discount;
  final int mrp;
  const PriceSection({
    Key? key,
    required this.discount,
    required this.mrp,
  }) : super(key: key);

  @override
  State<PriceSection> createState() => _PriceSectionState();
}

class _PriceSectionState extends State<PriceSection> {
  @override
  Widget build(BuildContext context) {
    double offPrice = 0;
    double discountedPrice() {
      setState(() {
        offPrice = (widget.mrp * (widget.discount / 100));
      });
      return widget.mrp - (widget.mrp * (widget.discount / 100));
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomeTitle(text: "Deal Price"),
        Container(
          margin: EdgeInsets.only(top: 5.h),
          height: 26.h,
          width: 246.w,
          child: Row(
            children: [
              Text(
                "-${widget.discount}%",
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xffEF233C),
                  height: 1,
                ),
              ),
              SizedBox(
                width: 8.w,
              ),
              Text(
                "Rs. ${discountedPrice()}",
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff011627),
                  height: 1,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 6.h),
          height: 14.h,
          width: 100.w,
          child: Text(
            "M.R.P. : Rs. ${widget.mrp}",
            style: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.w400,
              height: 1,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 6.h),
          height: 14.h,
          width: 160.w,
          child: Text(
            "(You are saving Rs. $offPrice)",
            style: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.w400,
              height: 1,
              color: const Color(0xff72B01D),
            ),
          ),
        ),
      ],
    );
  }
}
