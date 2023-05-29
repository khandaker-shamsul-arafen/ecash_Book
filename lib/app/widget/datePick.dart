import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../constants/text_style.dart';
import '../modules/give/controllers/give_controller.dart';

class DatePick extends StatefulWidget {
  final int select;

  DatePick({Key? key, required this.select}) : super(key: key);

  @override
  State<DatePick> createState() => _DatePickState();
}

class _DatePickState extends State<DatePick> {
  final giveController = Get.find<GiveController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .5,
      height: 55.h,
      decoration: BoxDecoration(
          border: Border.all(), borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.0.w),
            child: (widget.select == 0)
                ? Text(giveController.startDate.value,
                    style: AllTextStyle().textRegularStyle16())
                : Text(giveController.endDate.value,
                    style: AllTextStyle().textRegularStyle16()),
          ),
          const Spacer(),
          IconButton(
            onPressed: () async {
              setState(
                () async {
                  DateTime selectedDate = (await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime(2050),
                  ))!;
                  if (selectedDate != null) {
                    print(selectedDate);
                    String formattedDate =
                        DateFormat('yyyy-MM-dd').format(selectedDate);
                    print(formattedDate);
                    (widget.select == 0)
                        ? giveController.startDate.value = formattedDate
                        : giveController.endDate.value ==
                            formattedDate; //set output date to TextField value.
                  } else {
                    print("Date is not selected");
                  }
                },
              );
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
