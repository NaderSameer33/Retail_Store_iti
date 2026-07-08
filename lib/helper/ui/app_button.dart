import 'package:flutter/material.dart';
import 'app_color.dart';
import 'app_text_style.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.title,
    this.onPressed,
  });
  final String title;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.primaryColor,
        fixedSize: Size(double.infinity, 50),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: AppTextStyle.kText17White,
      ),
    );
  }
}
