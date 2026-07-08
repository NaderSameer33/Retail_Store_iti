import 'package:flutter/material.dart';
import '../../on_borading/views/on_borading_view.dart';
import '../../../helper/logic/app_assets.dart';
import '../../../helper/logic/helper_method.dart';
import '../../../helper/ui/app_color.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    navgateOnborading();
  }

  navgateOnborading() {
    goto(
      page: OnBoradingView(),
      canPop: false,
      delayedSecond: 2,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: Center(
        child: Image.asset(
          AppAssets.splashImage,
        ),
      ),
    );
  }
}
