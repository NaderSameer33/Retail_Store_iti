import 'package:flutter/material.dart';
import 'app_color.dart';
import 'app_text_style.dart';

class SecondryButton extends StatelessWidget {
  const SecondryButton({super.key, required this.title, this.onPressed});
  final String title;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: AppColor.primaryColor),
        backgroundColor: Colors.white,
        fixedSize: Size(double.infinity, 50),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: AppTextStyle.kText17White.copyWith(color: AppColor.primaryColor),
      ),
    );
  }
}
