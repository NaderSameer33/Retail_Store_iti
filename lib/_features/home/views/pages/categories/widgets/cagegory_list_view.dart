
import 'package:flutter/material.dart';
import 'category_item.dart';
import '../model/category_model.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
    required this.categoryList,
  });

  final List<CategoryModel> categoryList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
    
      child: ListView.builder(
        itemCount: categoryList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(right: 16),
          child: CategoryItem(model: categoryList[index],),
        ),
      ),
    );
  }
}

