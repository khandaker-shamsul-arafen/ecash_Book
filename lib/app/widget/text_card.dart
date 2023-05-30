import 'package:ecash_book/app/constants/all_color.dart';
import 'package:ecash_book/app/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TextCard extends StatelessWidget {
  final String text;

  const TextCard({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.07,
      width: Get.width * 0.45,
      child: Card(
        elevation: 1,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: AllColors.greyLightColor,
          ),
          child: Center(
              child: Padding(
            padding: EdgeInsets.all(3.0.r),
            child: Text(
              text,
              style: AllTextStyle().textRegularStyle16(),
            ),
          )),
        ),
      ),
    );
  }
}
