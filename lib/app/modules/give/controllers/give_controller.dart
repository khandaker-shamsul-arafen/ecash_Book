import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class GiveController extends GetxController {
  //TODO: Implement GiveController
  TextEditingController textController = TextEditingController();
  final TextEditingController timeController = TextEditingController();

  RxString endDate = DateFormat('yyyy-MM-dd').format(DateTime.now()).obs;
  RxString startDate = DateFormat('yyyy-MM-dd').format(DateTime.now()).obs;
  RxString start = 'start'.obs;
  RxString end = 'end'.obs;
  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
