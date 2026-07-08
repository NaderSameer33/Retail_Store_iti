import 'package:flutter/material.dart';
import 'app_color.dart';
import 'app_text_style.dart';

class AppFormFild extends StatelessWidget {
  const AppFormFild({super.key, required this.hintText, this.isSuffix = false});
  final String hintText;
  final bool isSuffix;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        suffixIcon: isSuffix
            ? Icon(Icons.remove_red_eye_outlined, color: AppColor.primaryColor)
            : SizedBox.shrink(),
        filled: true,
        fillColor: AppColor.fildFormFild,
        hintText: hintText,
        hintStyle: AppTextStyle.kText16Brown,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: AppColor.primaryColor,
          ),
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Color(0xffF3F3F3),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Color(0xffF3F3F3),
          ),
        ),
      ),
    );
  }
}
