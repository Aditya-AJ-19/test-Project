import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testproject/controllers/products_controller.dart';
import 'package:testproject/models/product_model.dart';
import 'package:testproject/views/screen%201/widgets/search_bar.dart';
import 'package:testproject/views/screen%202/screen2.dart';

class SearchContainer extends ConsumerWidget {
  const SearchContainer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double discountPrice(int mrp, int discount) {
      return mrp - (mrp * (discount / 100));
    }

    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      height: ref.watch(isSearchBoolProvider) == false ? 0.h : 250.h,
      width: 300.w,
      curve: Curves.fastOutSlowIn,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(5.r),
            bottomRight: Radius.circular(5.r)),
        color: Colors.grey.shade200,
      ),
      padding: EdgeInsets.all(10.h),
      child: ref.watch(isSearchBoolProvider) == false
          ? const SizedBox()
          : StreamBuilder<List<ProductModel>>(
              stream: ref.watch(productControllerProvider).getProducts(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final products = snapshot.data;
                  final searchQuery = ref.watch(searchQueryProvider);
                  return ListView.builder(
                    itemCount: products!.length,
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      if (products[index]
                          .name
                          .toString().toLowerCase()
                          .startsWith(searchQuery.toLowerCase())) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ScreenTwo(product: products[index],)),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.only(bottom: 2.h),
                            height: 55.h,
                            width: 200.w,
                            child: Row(
                              children: [
                                Container(
                                  height: 45.h,
                                  width: 45.h,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(25.r),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20.r),
                                    child: CachedNetworkImage(
                                        imageUrl: products[index].images![0]),
                                  ),
                                ),
                                Container(
                                  padding:
                                      EdgeInsets.only(top: 10.h, left: 10.w),
                                  height: 55.h,
                                  width: 200.w,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        products[index].name!,
                                        style: TextStyle(
                                          fontSize: 17.sp,
                                          fontWeight: FontWeight.w500,
                                          height: 1,
                                        ),
                                      ),
                                      Text(
                                        "RS. ${discountPrice(products[index].mRP!, products[index].discount!)}",
                                        style: TextStyle(
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey,
                                          height: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }
                      return const SizedBox();
                    },
                  );
                } else if (snapshot.hasError) {
                  return const Center(
                    child: Text("Something Went Wrong"),
                  );
                }
                return const SizedBox();
              },
            ),
    );
  }
}
