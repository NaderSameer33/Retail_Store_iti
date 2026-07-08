import 'package:flutter/material.dart';
import 'widgets/category_grid_view.dart';
import '../../../../../helper/ui/app_form_fild.dart';
import '../../../../../helper/ui/cusom_app_bar.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: 'Categories'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            AppFormFild(hintText: 'Search'),
            SizedBox(
              height: 10,
            ),
            CategoryGridView(),
          ],
        ),
      ),
    );
  }
}
