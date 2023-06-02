import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testproject/common/custome_title.dart';
import 'package:testproject/models/product_model.dart';
import 'package:testproject/views/screen%201/widgets/privious_order.dart';
import 'package:testproject/views/screen%202/widgets/app_bar.dart';
import 'package:testproject/views/screen%202/widgets/carousal.dart';
import 'package:testproject/views/screen%202/widgets/price_section.dart';
import 'package:testproject/views/screen%202/widgets/select_quantity.dart';
import 'package:testproject/views/screen%203/screen3.dart';
import 'package:testproject/views/thankyou_screen.dart';

class ScreenTwo extends StatelessWidget {
  final ProductModel product;
  const ScreenTwo({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final splited = product.details!.split('.');
    final string =
        "${splited[0]}\n ${splited[1]}\n${splited[2]}\n${splited[3]}";

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomeAppBar(),
            Container(
              padding: EdgeInsets.only(left: 24.w),
              constraints: BoxConstraints(maxHeight: 1269, minWidth: 360.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomeTitle(text: "Product"),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    product.name!,
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      height: 1,
                    ),
                  ),
                  ProductCarousal(
                    images: product.images!,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  PriceSection(
                    mrp: product.mRP!,
                    discount: product.discount!,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.h),
                    width: 312.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.5.w,
                        color: const Color(0xff6C757D),
                      ),
                      borderRadius: BorderRadius.circular(5.h),
                    ),
                    child: ExpansionTile(
                      trailing: Container(
                        padding: EdgeInsets.all(2.h),
                        height: 17.h,
                        width: 17.h,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 1.5.w, color: const Color(0xffED8F03)),
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Image.asset(
                          "assets/images/down-arrow.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      title: Text(
                        "Product Details",
                        style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xffED8F03),
                            height: 1),
                      ),
                      childrenPadding:
                          EdgeInsets.only(left: 10.h, right: 5.w, bottom: 5.h),
                      children: [
                        MarkdownBody(
                          data: string,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.h),
                    width: 312.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 1.5.w, color: const Color(0xff6C757D)),
                      borderRadius: BorderRadius.circular(5.h),
                    ),
                    child: ExpansionTile(
                      trailing: Container(
                        padding: EdgeInsets.all(2.h),
                        height: 17.h,
                        width: 17.h,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 1.5.w, color: const Color(0xffED8F03)),
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Image.asset(
                          "assets/images/down-arrow.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      title: Text(
                        "Product Reviews",
                        style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xffED8F03),
                            height: 1),
                      ),
                      childrenPadding:
                          EdgeInsets.only(left: 10.h, right: 5.w, bottom: 5.h),
                      children: const [
                        MarkdownBody(
                          data:
                              '* **Authentic & Pure:** Tata Salt Rock Salt is sourced directly from the pristine mountain ranges and brought to your kitchen.\n* **With Natural MINERALS:** Tata Rock Salt has natural minerals like calcium, potassium and magnesium.\n* **FLAVOURFUL TWIST:** Enjoy a fresh burst of flavor in every meal with Tata Salt Rock Salt.\n* **AMAZING DISHES:** Add Tata Rock Salt to your day to day meals or to enhance fasting foods.\n* **CONVENIENT PACKAGING:** It comes in a convenient pouch.',
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ScreenThree(
                            product: product,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      height: 64.h,
                      width: 312.w,
                      margin: EdgeInsets.only(top: 20.h),
                      padding: EdgeInsets.only(
                        left: 13.w,
                        top: 14.h,
                        bottom: 14.h,
                        right: 22.w,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.5.w,
                          color: const Color(0xff6C757D),
                        ),
                        borderRadius: BorderRadius.circular(5.h),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "View Supply Details",
                            style: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xffED8F03),
                              height: 1,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(2.h),
                            height: 17.h,
                            width: 17.h,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1.5.w, color: const Color(0xffED8F03)),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Image.asset(
                              "assets/images/right-arrow.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SelectQuantity(
                    qpo: product.qPO!,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.h, right: 24.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 48.h,
                          width: 146.w,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 2.w, color: const Color(0xffED8F03)),
                            borderRadius: BorderRadius.circular(5.r),
                          ),
                          child: Center(
                            child: Text(
                              "Add to Cart",
                              style: TextStyle(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xffED8F03),
                                height: 1,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ThankYouScreen(),
                              ),
                            );
                          },
                          child: Container(
                            height: 48.h,
                            width: 146.w,
                            decoration: BoxDecoration(
                              color: const Color(0xffED8F03),
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                            child: Center(
                              child: Text(
                                "Buy Now",
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  height: 1,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const CustomeTitle(text: "Recommended Products"),
                  const PreviousOrder(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        iconSize: 10.h,
        items: [
          BottomNavigationBarItem(
            label: "Back",
            icon: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset(
                "assets/images/back-button.png",
                height: 23.33.h,
                fit: BoxFit.contain,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "Home",
            icon: Image.asset(
              "assets/images/home.png",
              height: 22.9.h,
              fit: BoxFit.contain,
            ),
          ),
          BottomNavigationBarItem(
            label: "Back",
            icon: Image.asset(
              "assets/images/shopping-cart.png",
              height: 21.h,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
