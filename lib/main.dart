import 'package:flutter/material.dart';
import '_features/splash/views/splash_view.dart';
import 'helper/logic/helper_method.dart';

void main() {
  runApp(const Test());
}

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navKey,
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
