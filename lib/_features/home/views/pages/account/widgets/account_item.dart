import 'package:flutter/material.dart';
import '../../../../../../helper/ui/app_color.dart';
import '../../../../../../helper/ui/app_text_style.dart';

class AccountItem extends StatelessWidget {
  const AccountItem({
    super.key,
    required this.image,
    required this.title,

    this.isLogOut = false,
    this.isLangugae = false,
  });
  final String image, title;
  final bool isLogOut;
  final bool isLangugae;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(image),
      title: Text(
        title,
        style: AppTextStyle.kText24Brown.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),

      trailing: isLogOut
          ? SizedBox.shrink()
          : Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (isLangugae)
                  Text(
                    'English',
                    style: AppTextStyle.kText16Brown,
                  ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: AppColor.brownColor,
                  size: 15,
                ),
              ],
            ),
    );
  }
}
