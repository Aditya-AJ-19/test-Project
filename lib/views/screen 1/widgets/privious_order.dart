import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testproject/common/list_view_child.dart';
import 'package:testproject/controllers/products_controller.dart';
import 'package:testproject/models/product_model.dart';

class PreviousOrder extends ConsumerWidget {
  const PreviousOrder({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: EdgeInsets.only(top: 10.h),
      height: 94.h,
      width: 312.w,
      child: StreamBuilder<List<ProductModel>>(
        stream: ref.watch(productControllerProvider).getProducts(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final products = snapshot.data;
            return ListView.builder(
              itemBuilder: (context, index) => ListChild(
                name: products[index].name!,
                image: products[index].images![0],
              ),
              itemCount: products!.length,
              scrollDirection: Axis.horizontal,
            );
          } else if (snapshot.hasError) {
            return const SizedBox();
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}
