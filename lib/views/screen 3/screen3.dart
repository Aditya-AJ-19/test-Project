import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:testproject/common/custome_title.dart';
import 'package:testproject/models/product_model.dart';
import 'package:testproject/views/screen%203/widgets/single_stepper.dart';

class ScreenThree extends StatelessWidget {
  final ProductModel product;
  const ScreenThree({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: EdgeInsets.only(top: 25.h, left: 24.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomeTitle(text: "Supply Details"),
                SingleStepper(title: "Production",info: product.production!,),
                SingleStepper(title: "Manufacturing",info: product.manufacturing!,),
                SingleStepper(title: "Delivery",info: product.delivery!,),
                SizedBox(
                  height: 29.h,
                ),
              ],
            ),
          )),
    );
  }
}
