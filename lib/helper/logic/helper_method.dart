import 'package:flutter/material.dart';

final navKey = GlobalKey<NavigatorState>();
void goto({required Widget page, bool canPop = true, int? delayedSecond}) {
  void action() {
    Navigator.pushAndRemoveUntil(
      navKey.currentContext!,
      MaterialPageRoute(builder: (_) => page),
      (_) => canPop,
    );
  }

  if (delayedSecond != null) {
    Future.delayed(Duration(seconds: delayedSecond), () => action());
  } else {
    action();
  }
}
