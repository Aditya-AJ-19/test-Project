import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomeLiteText extends StatelessWidget {
  final String text;
  const CustomeLiteText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 11.sp,
        fontWeight: FontWeight.w400,
        color: const Color(0xff011627).withOpacity(0.6),
        height: 1.27,
      ),
    );
  }
}
