import 'package:ecash_book/app/constants/all_color.dart';
import 'package:ecash_book/app/constants/constant_value.dart';
import 'package:ecash_book/app/constants/constant_widget.dart';
import 'package:ecash_book/app/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:validatorless/validatorless.dart';

import '../../../routes/app_pages.dart';
import '../controllers/registration_controller.dart';

class RegistrationView extends GetView<RegistrationController> {
  const RegistrationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Complete Registration',
          style: AllTextStyle().textRegularStyle16(
              color: AllColors.greyColor, fontSize: fontSize22),
        ),
        leading: const Icon(
          Icons.arrow_back_ios,
          color: AllColors.greyColor,
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            "assets/images/reg_page_bg.png",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              children: [
                ConstantWidget().gapeH16(),
                Text(
                    'Enter your basic information to \n complete primary registration',
                    textAlign: TextAlign.center,
                    style: AllTextStyle().textRegularStyle(
                        color: AllColors.greyColor.withOpacity(0.6),
                        fontSize: fontSize22,
                        fontWeight: FontWeight.bold)),
                ConstantWidget().gapeH16(),
                registrationForm(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget registrationForm(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.55,
      width: Get.width * 0.90,
      child: Card(
        elevation: 20,
        child: Container(
          color: AllColors.pureWhiteColor.withOpacity(.9),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(8.h),
                    height: 100.h,
                    width: 100.w,
                    decoration: const BoxDecoration(
                        color: AllColors.greyLightColor,
                        shape: BoxShape.circle),
                    child: const Icon(
                      Icons.person_add,
                      size: 58,
                      color: AllColors.greyColor,
                    ),
                  ),
                  ConstantWidget().gapeH8(),
                  Form(
                    key: controller.formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: controller.name,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: Validatorless.required('Name is required'),
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            isDense: true,
                            contentPadding: EdgeInsets.all(10),
                            labelText: "Name",
                          ),
                        ),
                        ConstantWidget().gapeH16(),
                        TextFormField(
                          controller: controller.email,
                          validator: Validatorless.multiple([
                            Validatorless.required('Email is required'),
                            Validatorless.email('Please enter a valid email'),
                          ]),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            isDense: true,
                            contentPadding: EdgeInsets.all(10.r),
                            labelText: 'Email',
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        ConstantWidget().gapeH16(),
                        TextFormField(
                          controller: controller.phone,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            isDense: true,
                            contentPadding: EdgeInsets.all(10.r),
                            labelText: 'Phone Number',
                          ),
                          validator: Validatorless.multiple([
                            Validatorless.required('phone is required'),
                            Validatorless.min(
                                11, 'phone must be  11 characters'),
                            Validatorless.max(
                                11, 'phone must be  11 characters'),
                          ]),
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          ],
                          keyboardType: TextInputType.phone,
                        ),
                        ConstantWidget().gapeH16(),
                        TextFormField(
                          controller: controller.address,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator:
                              Validatorless.required('Address is required'),
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            isDense: true,
                            contentPadding: EdgeInsets.all(10.r),
                            labelText: 'Address',
                          ),
                        ),
                        ConstantWidget().gapeH16(),
                      ],
                    ),
                  ),
                  ConstantWidget().gapeH16(),
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
                        if (controller.formKey.currentState!.validate()) {
                          print('Valid');
                        } else {
                          Get.toNamed(Routes.DASH_BOARD);
                        }

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
                  ConstantWidget().gapeH(10)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
