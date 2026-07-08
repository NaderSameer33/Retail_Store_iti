import 'package:flutter/material.dart';
import '../model/product_model.dart';
import 'product_item.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        itemCount: ProductModel.productList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => ProductItem(
          model: ProductModel.productList[index],
        ),
      ),
    );
  }
}
