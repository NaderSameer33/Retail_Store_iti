import 'package:flutter/material.dart';
import 'widgets/order_list.dart';
import '../../../../../helper/ui/app_color.dart';
import '../../../../../helper/ui/app_text_style.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColor.whiteColor,
        appBar: AppBar(
          backgroundColor: AppColor.whiteColor,
          elevation: 0,
          centerTitle: true,

          title: Text(
            "Orders",
            style: AppTextStyle.kText24Brown.copyWith(
              color: AppColor.primaryColor,
            ),
          ),
          bottom: const TabBar(
            indicatorColor: AppColor.primaryColor,
            labelColor: AppColor.primaryColor,
            unselectedLabelColor: AppColor.brownColor,
            tabs: [
              Tab(text: "Ongoing"),
              Tab(text: "History"),
            ],
          ),
        ),
        body:  TabBarView(
          children: [
            OrdersList(),
            OrdersList(),
          ],
        ),
      ),
    );
  }
}

