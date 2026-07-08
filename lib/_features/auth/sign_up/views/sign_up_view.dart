import 'package:flutter/material.dart';
import '../../../../helper/logic/app_assets.dart';
import '../../../../helper/logic/helper_method.dart';
import '../../../../helper/ui/app_color.dart';
import '../../../../helper/ui/app_text_style.dart';
import '../../../../helper/ui/cusom_app_bar.dart';
import '../../sign_in/views/sign_in_view.dart';
import '../../../../helper/ui/app_button.dart';
import '../../../../helper/ui/app_form_fild.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      appBar: CustomAppBar(
        title: 'sign in ',
        isLeading: false,
      ),
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
              'Please enter your Infromation\nto access your account.',
              style: AppTextStyle.kText16Brown.copyWith(
                fontSize: 18,
              ),
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
              height: 10,
            ),

            AppFormFild(
              hintText: 'confirm password',
              isSuffix: true,
            ),

            SizedBox(
              height: 30,
            ),
            AppButton(
              title: 'sign up',
              onPressed: () => goto(page: SignInView()),
            ),
          ],
        ),
      ),
    );
  }
}
