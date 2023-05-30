import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../constants/all_color.dart';
import '../../../constants/constant_value.dart';
import '../../../constants/constant_widget.dart';
import '../../../constants/text_style.dart';
import '../../../widget/datePick.dart';
import '../controllers/add_controller.dart';

class AddView extends GetView<AddController> {
  const AddView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddView'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0.r),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // datePick(context, controller.startDate.value),
            Obx(
              () {
                return Container(
                  width: MediaQuery.of(context).size.width * .40,
                  height: 50.h,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 8.0.w),
                          child: Text(controller.addDate.value,
                              style: AllTextStyle().textRegularStyle16())),
                      const Spacer(),
                      IconButton(
                        onPressed: () async {
                          var formatedDate = DatePick().datePick(context);
                          controller.addDate.value = await formatedDate;
                        },
                        icon: const Icon(
                          Icons.calendar_month_outlined,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
            ConstantWidget().gapeH16(),
            TextField(
              controller: controller.nameOfReceiver,
              decoration: const InputDecoration(
                // prefixIcon: Icon(Icons.person),
                labelText: "NameOfReceiver",
                border: const OutlineInputBorder(),
                // errorText: (controller.name.text.isEmpty)
                //     ? controller.nameValidate.value
                //         ? 'Name Can\'t Be Empty'
                //         : null
                //     : null,
              ),
              keyboardType: TextInputType.name,
            ),
            ConstantWidget().gapeH16(),
            TextField(
                controller: controller.amount,
                decoration: const InputDecoration(
                  //  prefixIcon: Icon(Icons.person),
                  labelText: "Amount",
                  border: const OutlineInputBorder(),
                  // errorText: (controller.name.text.isEmpty)
                  //     ? controller.nameValidate.value
                  //         ? 'Name Can\'t Be Empty'
                  //         : null
                  //     : null,
                ),
                keyboardType: TextInputType.number),
            ConstantWidget().gapeH16(),
            Wrap(
              children: [
                TextFormField(
                  maxLines: 3,
                  maxLength: 100,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.blueGrey),
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Colors.blueGrey, width: 2),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Add Your Note ",
                      hintStyle: AllTextStyle().textRegularStyle(fontSize: 16)),
                ),
                ConstantWidget().gapeH(150),
                SizedBox(
                  width: Get.width,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 16.h, horizontal: 16.w),
                        backgroundColor: AllColors.primaryColor),
                    onPressed: () {
                      // Navigator.pushNamed(context, AppRouter.otpPage);
                    },
                    child: Text(
                      'Save',
                      style: AllTextStyle().textRegularStyle16(
                          color: AllColors.pureWhiteColor,
                          fontSize: fontSize22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            ConstantWidget().gapeH16(),
          ],
        ),
      ),
    );
  }
}
