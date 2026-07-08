import 'package:flutter/material.dart';
import '../../sign_up/views/sign_up_view.dart';
import '../../../../helper/logic/app_assets.dart';
import '../../../../helper/logic/helper_method.dart';
import '../../../../helper/ui/app_color.dart';
import '../../../../helper/ui/app_text_style.dart';
import '../../../../helper/ui/cusom_app_bar.dart';
import '../../../home/views/home_nav_view.dart';
import '../../../../helper/ui/app_button.dart';
import '../../../../helper/ui/app_form_fild.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      appBar: CustomAppBar(title: 'Sign in'),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 7,
            ),
            Image.asset(
              AppAssets.signUpImage,
            ),
            Text(
              'Please enter your Email  and \npassword to access your account.',
              style: AppTextStyle.kText16Brown.copyWith(fontSize: 18),
            ),
            SizedBox(
              height: 30,
            ),
            AppFormFild(hintText: 'Email'),

            SizedBox(
              height: 10,
            ),
            AppFormFild(
              hintText: 'password',
              isSuffix: true,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              textAlign: TextAlign.end,
              'forget password',
              style: AppTextStyle.kText16Brown.copyWith(
                color: AppColor.primaryColor,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            AppButton(
              title: 'sign in',
              onPressed: () => goto(page: HomeNavView(), canPop: false),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Dont have account ? ',
                  style: AppTextStyle.kText16Brown,
                ),
                SizedBox(
                  width: 4,
                ),
                GestureDetector(
                  onTap: () => goto(page: SignUpView()),
                  child: Text(
                    'Sign up',
                    style: AppTextStyle.kText16Brown.copyWith(
                      color: AppColor.primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
