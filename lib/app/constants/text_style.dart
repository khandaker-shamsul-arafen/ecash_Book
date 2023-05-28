import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'all_color.dart';
import 'constant_value.dart';

class AllTextStyle {
  textRegularStyle({
    color = AllColors.pureBlackColor,
    double fontSize = fontSize14,
    fontWeight = FontWeight.w400,
  }) {
    return TextStyle(
      fontSize: fontSize.sp,
      color: color,
      fontWeight: fontWeight,
    );
  }

  textRegularStyle16({
    color = AllColors.pureBlackColor,
    double fontSize = fontSize16,
    fontWeight = FontWeight.w500,
  }) {
    return TextStyle(
      fontSize: fontSize.sp,
      color: color,
      fontWeight: fontWeight,
    );
  }

  textRegularStyle20({
    color = AllColors.pureBlackColor,
    double fontSize = fontSize22,
    fontWeight = FontWeight.bold,
  }) {
    return TextStyle(
      fontSize: fontSize.sp,
      color: color,
      fontWeight: fontWeight,
    );
  }
}
