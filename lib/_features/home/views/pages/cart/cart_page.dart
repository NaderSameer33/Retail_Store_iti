import 'package:flutter/material.dart';
import 'widgets/cart_list_view.dart';
import '../../../../../helper/logic/app_assets.dart';
import '../../../../../helper/ui/app_button.dart';
import '../../../../../helper/ui/app_color.dart';
import '../home/model/product_model.dart';
import '../../../../../helper/ui/cusom_app_bar.dart';
import 'widgets/counter.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      appBar: CustomAppBar(title: 'Cart'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CartListView(),
          Padding(
            padding: EdgeInsets.all(16),
            child: AppButton(title: 'CheckOut', onPressed: () {}),
          ),
        ],
      ),
    );
  }
}
