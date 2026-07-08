import 'package:flutter/material.dart';
import 'widgets/account_item.dart';
import '../../../../../helper/logic/app_assets.dart';
import '../../../../../helper/ui/app_color.dart';
import '../../../../../helper/ui/app_text_style.dart';
import '../../../../../helper/ui/cusom_app_bar.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  bool isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      appBar: CustomAppBar(title: 'Profile'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 10,
          children: [
            AccountItem(
              image: AppAssets.userImage,
              title: 'Edit Profile',
            ),
            AccountItem(
              image: AppAssets.keyImage,
              title: 'Change Password',
            ),
            AccountItem(
              image: AppAssets.cartImage,
              title: 'My Cards',
            ),
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                textAlign: TextAlign.start,
                'App Settings',
                style: AppTextStyle.kText24Brown.copyWith(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: AppColor.primaryColor,
                ),
              ),
            ),
            SwitchListTile(
              secondary: Image.asset(AppAssets.bellImage),
              title: Text(
                'Notifications',
                style: AppTextStyle.kText16Brown.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              activeColor: AppColor.primaryColor,
              value: isSwitch,
              onChanged: (value) {
                isSwitch = value;
                setState(() {});
              },
            ),
            AccountItem(
              image: AppAssets.langugaleImage,
              title: 'Language',
              isLangugae: true,
            ),
            AccountItem(
              image: AppAssets.logOutImage,
              title: 'Logout',
              isLogOut: true,
            ),
          ],
        ),
      ),
    );
  }
}
