import 'package:ecash_book/app/constants/constant_widget.dart';
import 'package:ecash_book/app/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../widget/text_card.dart';
import '../controllers/give_controller.dart';

class GiveView extends GetView<GiveController> {
  const GiveView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(''),
          centerTitle: true,
        ),
        body: Column(
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
                onPressed: () {},
                icon: Icon(
                  Icons.add,
                  size: 24.r,
                ),
                label: Text(
                  "Add New",
                  style: AllTextStyle().textRegularStyle20(),
                )),
            ConstantWidget().gapeH16(),
            // datePick(context, controller.startDate.value),
            Obx(() {
              return Row(
                children: [
                  datePick(context, controller.start.value),
                  datePick(
                    context,
                    controller.end.value,
                  )
                ],
              );
            })
          ],
        ),
      ),
    );
  }

  Widget datePick(BuildContext context, String select) {
    print(select);
    return Container(
      width: MediaQuery.of(context).size.width * .5,
      height: 55.h,
      decoration: BoxDecoration(
          border: Border.all(), borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.0.w),
            child: (select == 'start')
                ? Text(controller.startDate.value,
                    style: AllTextStyle().textRegularStyle20())
                : Text(controller.endDate.value,
                    style: AllTextStyle().textRegularStyle16()),
          ),
          const Spacer(),
          IconButton(
            onPressed: () async {
              {
                DateTime selectedDate = (await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2050),
                ))!;
                if (selectedDate != null) {
                  String formattedDate =
                      DateFormat('yyyy-MM-dd').format(selectedDate);
                  print(formattedDate);
                  (select == 'start')
                      ? controller.startDate.value = formattedDate
                      : controller.endDate.value == formattedDate;
                  print("Hi" +
                      controller
                          .endDate.value); //set output date to TextField value.
                } else {
                  print("Date is not selected");
                }
              }
              ;
            },
            icon: const Icon(
              Icons.calendar_month_outlined,
            ),
          )
        ],
      ),
    );
  }
}
