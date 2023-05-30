import 'package:ecash_book/app/constants/all_color.dart';
import 'package:ecash_book/app/constants/text_style.dart';
import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  final Icon icon;
  final String text;
  final VoidCallback onPress;

  const HomeButton({
    Key? key,
    required this.icon,
    required this.text,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AllColors.primaryColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            icon, // <-- Icon
            Text(
              text,
              style: AllTextStyle()
                  .textRegularStyle20(color: AllColors.pureWhiteColor),
            ), // <-- Text
          ],
        ),
      ),
    );
  }
}
