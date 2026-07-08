import 'package:flutter/material.dart';
import '../model/category_model.dart';
import 'category_item.dart';

class CategoryGridView extends StatelessWidget {
  const CategoryGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: CategoryModel.categoryList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 5,
          crossAxisSpacing: 22,
          mainAxisExtent: 150,
        ),
        itemBuilder: (context, index) =>
            CategoryItem(model: CategoryModel.categoryList[index]),
      ),
    );
  }
}
