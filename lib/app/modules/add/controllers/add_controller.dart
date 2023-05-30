import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class AddController extends GetxController {
  //TODO: Implement AddController
  RxString addDate = DateFormat('yyyy-MM-dd').format(DateTime.now()).obs;
  final TextEditingController nameOfReceiver = TextEditingController();
  final TextEditingController amount = TextEditingController();
  final TextEditingController note = TextEditingController();

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
