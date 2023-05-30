import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePick {
  Future<String> datePick(BuildContext context) async {
    String formattedDate = '';
    DateTime selectedDate = (await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2050),
    ))!;
    if (selectedDate != null) {
      formattedDate = DateFormat('yyyy-MM-dd').format(selectedDate);
      //set output date to TextField value.
    } else {
      print("Date is not selected");
    }
    return formattedDate;
  }
}
