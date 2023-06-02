import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectQuantity extends StatefulWidget {
  final String qpo;
  const SelectQuantity({
    Key? key,
    required this.qpo,
  }) : super(key: key);

  @override
  State<SelectQuantity> createState() => _SelectQuantityState();
}

class _SelectQuantityState extends State<SelectQuantity> {
  int quantity = 1;
  void increment() {
    setState(() {
      quantity = quantity + 1;
    });
  }

  void decrement() {
    if (quantity > 1) {
      setState(() {
        quantity = quantity - 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      width: 312.w,
      margin: EdgeInsets.only(top: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 38.h,
            width: 130.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Select Quantity",
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    height: 1,
                  ),
                ),
                Text(
                  "(Maximum ${widget.qpo} Quantity Per Order)",
                  style: TextStyle(
                    fontSize: 8.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff6C757D),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(11.5.h),
            height: 48.h,
            width: 166.w,
            decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: const Color(0xff6C757D)),
              borderRadius: BorderRadius.circular(4.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => decrement(),
                  child: Container(
                    height: 25.h,
                    width: 24.99.h,
                    decoration: BoxDecoration(
                      color: const Color(0xffED8F03),
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    child: Icon(
                      Icons.remove,
                      color: Colors.white,
                      size: 18.w,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                  width: 42.w,
                  child: Center(
                    child: Text(
                      quantity.toString(),
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        height: 1,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => increment(),
                  child: Container(
                    height: 25.h,
                    width: 24.99.h,
                    decoration: BoxDecoration(
                      color: const Color(0xffED8F03),
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 18.w,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
