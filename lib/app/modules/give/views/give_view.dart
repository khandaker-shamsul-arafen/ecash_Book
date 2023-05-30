import 'package:ecash_book/app/constants/constant_widget.dart';
import 'package:ecash_book/app/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../constants/all_color.dart';
import '../../../routes/app_pages.dart';
import '../../../widget/datePick.dart';
import '../../../widget/text_card.dart';
import '../controllers/give_controller.dart';

class GiveView extends GetView<GiveController> {
  const GiveView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.add),
          title: const Text('fwerewrre'),
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

              ElevatedButton.icon(
                  onPressed: () {
                    Get.toNamed(Routes.ADD);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AllColors.primaryColor.withOpacity(0.8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                  icon: Icon(
                    Icons.add,
                    size: 24.r,
                    color: AllColors.pureWhiteColor,
                  ),
                  label: Text(
                    "Add New",
                    style: AllTextStyle()
                        .textRegularStyle20(color: AllColors.pureWhiteColor),
                  )),
              ConstantWidget().gapeH16(),
              ConstantWidget().gapeH16(),
              // datePick(context, controller.startDate.value),
              Obx(
                () {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * .40,
                        height: 50.h,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 8.0.w),
                                child: Text(controller.startDate.value,
                                    style:
                                        AllTextStyle().textRegularStyle16())),
                            const Spacer(),
                            IconButton(
                              onPressed: () async {
                                var formatedDate = DatePick().datePick(context);
                                controller.startDate.value = await formatedDate;
                              },
                              icon: const Icon(
                                Icons.calendar_month_outlined,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * .40,
                        height: 50.h,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 8.0.w),
                                child: Text(controller.endDate.value,
                                    style:
                                        AllTextStyle().textRegularStyle16())),
                            const Spacer(),
                            IconButton(
                              onPressed: () async {
                                var formatedDate = DatePick().datePick(context);
                                controller.endDate.value = await formatedDate;
                              },
                              icon: const Icon(
                                Icons.calendar_month_outlined,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  );
                },
              ),
              ConstantWidget().gapeH16(),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AllColors.primaryColor.withOpacity(0.8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                  child: Text(
                    'Customer',
                    style: AllTextStyle()
                        .textRegularStyle16(color: AllColors.pureWhiteColor),
                  )),
              ConstantWidget().gapeH16(),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AllColors.primaryColor.withOpacity(0.8),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
                child: Text(
                  'Search',
                  style: AllTextStyle()
                      .textRegularStyle16(color: AllColors.pureWhiteColor),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
