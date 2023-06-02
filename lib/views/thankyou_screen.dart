import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testproject/views/screen%201/screen1.dart';
import 'package:testproject/views/screen%201/widgets/search_bar.dart';

class ThankYouScreen extends ConsumerWidget {
  const ThankYouScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          const Text(
            "Thank You,",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          ElevatedButton(
            onPressed: () {
              ref.watch(isSearchBoolProvider.notifier).state = false;
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const ScreenOne()),
                  (Route<dynamic> route) => false);
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.zero,
              shape: const StadiumBorder(),
            ),
            child: Ink(
              decoration: BoxDecoration(
                color: Color(0xffED8F03),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                width: 320.w,
                height: 50.h,
                alignment: Alignment.center,
                child: const Text(
                  'continue Shopping',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
