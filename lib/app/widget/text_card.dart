import 'package:ecash_book/app/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextCard extends StatelessWidget {
  final String text;

  const TextCard({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.07,
      width: Get.width * 0.3,
      child: Card(
        elevation: 4,
        child: Center(
            child: Text(
          text,
          style: AllTextStyle().textRegularStyle16(),
        )),
      ),
    );
  }
}
