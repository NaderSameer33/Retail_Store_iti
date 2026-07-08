import 'package:flutter/material.dart';
import 'app_color.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.isLeading = false,
  });
  final String title;
  final bool isLeading;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(
          color: AppColor.primaryColor,
          fontWeight: FontWeight.w400,
          fontSize: 24,
        ),
      ),
      leading: isLeading
          ? Icon(Icons.arrow_back_ios, color: AppColor.primaryColor)
          : SizedBox.shrink(),

      backgroundColor: AppColor.whiteColor,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56);
}
