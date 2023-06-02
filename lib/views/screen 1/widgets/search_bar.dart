import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final isSearchBoolProvider = StateProvider<bool>(
  (ref) => false,
);

final searchQueryProvider = StateProvider<String>(
  (ref) => "",
);

class CustomeSearchBar extends ConsumerStatefulWidget {
  const CustomeSearchBar({super.key});

  @override
  ConsumerState<CustomeSearchBar> createState() => _CustomeSearchBarState();
}

class _CustomeSearchBarState extends ConsumerState<CustomeSearchBar> {
  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return Container(
      height: 42.h,
      width: 312.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            width: 12.w,
          ),
          Container(
            margin: EdgeInsets.only(bottom: 15.6.h),
            height: 17.h,
            width: 17.w,
            child: const Icon(Icons.search),
          ),
          Container(
            margin: EdgeInsets.only(left: 12.w, bottom: 2.h),
            height: 20.h,
            width: 240,
            child: TextFormField(
              controller: searchController,
              onTap: () {
                setState(() {
                  ref.watch(isSearchBoolProvider.notifier).state = true;
                });
              },
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
              onChanged: (value) {
                ref.watch(searchQueryProvider.notifier).state = value;
              },
              decoration: InputDecoration(
                focusColor: Colors.white,
                hintText: "Search",
                border: InputBorder.none,
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          ref.watch(isSearchBoolProvider) == false
              ? const SizedBox()
              : GestureDetector(
                  onTap: () {
                    ref.watch(isSearchBoolProvider.notifier).state = false;
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 15.6.h),
                    height: 17.h,
                    width: 17.w,
                    child: const Icon(Icons.cancel_outlined),
                  ),
                ),
        ],
      ),
    );
  }
}
