import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testproject/controllers/profile_controller.dart';
import 'package:testproject/views/screen%202/widgets/search_bar.dart';

class CustomeAppBar extends ConsumerWidget {
  const CustomeAppBar({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Container(
              padding: EdgeInsets.only(
                top: 64.h,
                left: 24.w,
              ),
              height: 126.h,
              width: 360.w,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xffED8F03),
                    Color(0xffFFB75E),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 42.h,
                    width: 42.h,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(29.r),
                      child: CachedNetworkImage(imageUrl: ref.watch(profilePicProvider)),
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  const CustomeSearchBarPD(),
                ],
              ),
            );
  }
}