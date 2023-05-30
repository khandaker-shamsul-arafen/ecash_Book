import 'package:ecash_book/app/constants/all_color.dart';
import 'package:ecash_book/app/constants/constant_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controllers/splash_screen_controller.dart';

enum PageTransitionType {
  fade,
  rightToLeft,
  leftToRight,
  upToDown,
  downToUp,
  scale,
  rotate,
  size,
  rightToLeftWithFade,
  leftToRightWithFade,
}

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.all(16.0.r),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ConstantWidget().gapeH(32),
                Image.asset(
                  'assets/images/advlogo.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                ConstantWidget().gapeH(32),
                Padding(
                  padding: EdgeInsets.all(16.0.r),
                  child: const Text(
                    "Hi My NAMe IS Shanto,I  Want to Talk With You About Your Job Life",
                    style: TextStyle(
                      fontSize: 22,
                      color: AllColors.primaryColor,
                    ),
                  ),
                ),
                Spacer(),
                SizedBox(
                  width: Get.width,
                  height: Get.height * 0.08,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AllColors.primaryColor),
                      onPressed: () {},
                      child: const Text(
                        " Get Started",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: AllColors.pureWhiteColor),
                      )),
                ),
                ConstantWidget().gapeH(100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
