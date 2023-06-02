import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testproject/common/list_view_child.dart';
import 'package:testproject/controllers/offers_controller.dart';
import 'package:testproject/models/offer_model.dart';

class Offers extends ConsumerWidget {
  const Offers({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: EdgeInsets.only(top: 10.h),
      height: 94.h,
      width: 312.w,
      child: StreamBuilder<List<OfferModel>>(
        stream: ref.watch(offersControllerProvider).getOffers(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final offers = snapshot.data;
            return ListView.builder(
              itemBuilder: (context, index) => ListChild(
                name: offers[index].name!,
                image: offers[index].image!,
              ),
              itemCount: offers!.length,
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
