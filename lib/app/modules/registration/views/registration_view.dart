import 'package:ecash_book/app/constants/all_color.dart';
import 'package:ecash_book/app/constants/constant_value.dart';
import 'package:ecash_book/app/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controllers/registration_controller.dart';

class RegistrationView extends GetView<RegistrationController> {
  const RegistrationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Complete Registration',
          style: AllTextStyle().textRegularStyle(color: AllColors.greyColor),
        ),
        leading: const Icon(Icons.arrow_back_ios),
      ),
      body: Stack(
        children: [
          _buildBackground(),
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0.r),
                  child: Text(
                      'Enter your basic information to complete primary registration',
                      textAlign: TextAlign.center,
                      style: AllTextStyle().textRegularStyle(
                          color: AllColors.greyColor, fontSize: fontSize22)),
                ),
                _buildRegistrationCard(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRegistrationCard(BuildContext context) {
    return Center(
        child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            decoration:
                BoxDecoration(color: AllColors.pureWhiteColor, boxShadow: [
              BoxShadow(
                  color: Colors.black26,
                  offset: Offset.zero,
                  blurRadius: 10,
                  spreadRadius: 1)
            ]),
            height: Get.height * 0.50,
            margin: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      padding: EdgeInsets.all(16),
                      margin: EdgeInsets.only(bottom: 8),
                      decoration: BoxDecoration(
                          color: AllColors.greyLightColor,
                          shape: BoxShape.circle),
                      child: Icon(
                        Icons.person_add,
                        size: 48,
                        color: AllColors.greyColor,
                      )),
                  Form(
                    key: controller.formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            isDense: true,
                            contentPadding: EdgeInsets.all(10),
                            labelText: "Name",
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            isDense: true,
                            contentPadding: EdgeInsets.all(10),
                            labelText: 'Email',
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            isDense: true,
                            contentPadding: EdgeInsets.all(10),
                            labelText: 'Phone Number',
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            isDense: true,
                            contentPadding: EdgeInsets.all(10),
                            labelText: 'Address',
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                  vertical: 20,
                                ),
                                backgroundColor: AllColors.primaryColor),
                            onPressed: () {
                              // Navigator.pushNamed(context, AppRouter.otpPage);
                            },
                            child: Text(
                              'Save',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            )),
                      ),
                    ],
                  ),
                ])));
  }

  Widget _buildBackground() {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
          'assets/images/reg_page_bg.png',
        ),
        fit: BoxFit.cover,
      )),
    );
  }
}
