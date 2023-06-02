import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductCarousal extends StatefulWidget {
  final List<String> images;
  const ProductCarousal({
    Key? key,
    required this.images,
  }) : super(key: key);

  @override
  State<ProductCarousal> createState() => _ProductCarousalState();
}

class _ProductCarousalState extends State<ProductCarousal> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 116.h,
          width: 312.w,
          child: CarouselSlider.builder(
            options: CarouselOptions(
              height: 100.0,
              viewportFraction: 0.349,
              enableInfiniteScroll: false,
              onPageChanged: (index, reason) {
                setState(() {
                  activeIndex = index;
                });
              },
            ),
            itemBuilder: (context, index, realIndex) {
              return Container(
                width: 94.w,
                margin: EdgeInsets.only(left: 15.w),
                child: CachedNetworkImage(imageUrl: widget.images[index]),
              );
            },
            itemCount: widget.images.length,
          ),
        ),
        SizedBox(
          height: 6.h,
          width: 28.w,
          child: AnimatedSmoothIndicator(
            activeIndex: activeIndex,
            count: 3,
            effect: WormEffect(
              dotHeight: 6.h,
              dotWidth: 6.h,
              spacing: 5.w,
            ),
          ),
        )
      ],
    );
  }
}
