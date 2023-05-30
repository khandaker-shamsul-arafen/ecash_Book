import 'package:ecash_book/app/constants/constant_widget.dart';
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
            title: const Text(''),
            centerTitle: true,
          ),
          body: Padding(
            padding: EdgeInsets.all(16.0.r),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextCard(text: 'To Pay 5000'),
                    TextCard(text: 'To receive 1000'),
                  ],
                ),
                ConstantWidget().gapeH16(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: Get.height * 0.07,
                      width: Get.width * 0.3,
                      child: HomeButton(
                        icon: Icon(Icons.ice_skating),
                        text: 'Loan Give',
                        onPress: () {
                          Get.toNamed(Routes.GIVE);
                        },
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.07,
                      width: Get.width * 0.3,
                      child: HomeButton(
                        icon: Icon(Icons.ice_skating),
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
                    icon: Icon(Icons.ice_skating),
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
