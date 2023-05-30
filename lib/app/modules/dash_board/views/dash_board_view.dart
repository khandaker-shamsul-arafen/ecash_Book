import 'package:ecash_book/app/constants/all_color.dart';
import 'package:ecash_book/app/constants/constant_widget.dart';
import 'package:ecash_book/app/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../widget/home_button.dart';
import '../../../widget/text_card.dart';
import '../controllers/dash_board_controller.dart';

class DashBoardView extends GetView<DashBoardController> {
  const DashBoardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              'lkjdkjw',
              style: AllTextStyle()
                  .textRegularStyle16(color: AllColors.pureWhiteColor),
            ),
            //centerTitle: true,
            backgroundColor: AllColors.primaryDarkColor,
          ),
          drawer: Drawer(),
          body: Padding(
            padding: EdgeInsets.all(16.0.r),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextCard(text: 'To Pay: 5000'),
                    Spacer(),
                    TextCard(text: 'To receive: 1000'),
                  ],
                ),
                ConstantWidget().gapeH16(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: Get.height * 0.17,
                      width: Get.width * 0.45,
                      child: HomeButton(
                        icon: const Icon(
                          Icons.monetization_on_sharp,
                          size: 80,
                          color: AllColors.pureWhiteColor,
                        ),
                        text: 'Loan Give',
                        onPress: () {
                          Get.toNamed(Routes.GIVE);
                        },
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      height: Get.height * 0.17,
                      width: Get.width * 0.45,
                      child: HomeButton(
                        icon: const Icon(
                          Icons.monetization_on_sharp,
                          size: 80,
                          color: AllColors.pureWhiteColor,
                        ),
                        text: 'Take Loan',
                        onPress: () {
                          Get.toNamed(Routes.REGISTRATION);
                        },
                      ),
                    ),
                  ],
                ),
                ConstantWidget().gapeH16(),
                SizedBox(
                  height: Get.height * 0.07,
                  width: Get.width,
                  child: HomeButton(
                    icon: const Icon(
                      Icons.monetization_on_sharp,
                      color: AllColors.pureWhiteColor,
                    ),
                    text: 'Monthly Income',
                    onPress: () {
                      Get.toNamed(Routes.REGISTRATION);
                    },
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
