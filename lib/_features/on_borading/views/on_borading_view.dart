import 'package:flutter/material.dart';
import '../../../helper/logic/app_assets.dart';
import '../../../helper/logic/helper_method.dart';
import '../../../helper/ui/app_color.dart';
import '../../../helper/ui/app_text_style.dart';
import '../../auth/sign_in/views/sign_in_view.dart';
import '../../auth/sign_up/views/sign_up_view.dart';
import '../../../helper/ui/app_button.dart';
import '../../../helper/ui/secondry_button.dart';

class OnBoradingView extends StatelessWidget {
  const OnBoradingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 70),

            Image.asset(
              AppAssets.onBoradingImage,
              height: 400,
            ),
            SizedBox(height: 20),
            Text(
              textAlign: TextAlign.center,
              'Welcome to our app',
              style: AppTextStyle.kText24Brown,
            ),
            SizedBox(height: 20),
            Text(
              textAlign: TextAlign.center,
              '     Shop online and get groceries\ndelivered from stores to your home \n in as fast as 1 hour .',
              style: AppTextStyle.kText16Brown,
            ),

            SizedBox(height: 46),
            AppButton(
              title: 'Sign up',
              onPressed: () => goto(page: SignUpView(), canPop: false),
            ),
            SizedBox(height: 16),
            SecondryButton(
              title: 'Sign in ',
              onPressed: () => goto(page: SignInView(), canPop: false),
            ),
          ],
        ),
      ),
    );
  }
}
