import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testproject/controllers/profile_controller.dart';
import 'package:testproject/models/profile_model.dart';

class ProfileInformation extends ConsumerWidget {
  const ProfileInformation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
        margin: EdgeInsets.only(top: 64.h, left: 24.w),
        child: FutureBuilder<ProfileModel?>(
            future: ref.read(profileControllerProvider).userInfo(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final userInfo = snapshot.data;
                
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 5.h),
                      height: 58.h,
                      width: 58.h,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(29.r),
                        child:
                            CachedNetworkImage(imageUrl: userInfo!.profilepic!),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8.w),
                      height: 58.h,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            userInfo.name!,
                            style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              height: 1,
                            ),
                          ),
                          Text(
                            userInfo.email!,
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "+91 ${userInfo.number!}",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              } else if (snapshot.hasError) {
                return const SizedBox();
              } else {
                return const SizedBox();
              }
            }));
  }
}
