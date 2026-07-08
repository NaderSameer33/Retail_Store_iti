import 'package:flutter/material.dart';
import 'cart_item.dart';
import '../../home/model/product_model.dart';

class CartListView extends StatelessWidget {
  const CartListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) => CartItem(
          model: ProductModel.productList[index],
        ),
        separatorBuilder: (context, index) => Divider(),
        itemCount: ProductModel.productList.length,
      ),
    );
  }
}
