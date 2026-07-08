import 'package:flutter/material.dart';
import '../categories/widgets/cagegory_list_view.dart';
import 'widgets/product_list_view.dart';
import '../../../../../helper/logic/app_assets.dart';
import '../categories/model/category_model.dart';
import 'widgets/home_info.dart';
import '../../../../../helper/ui/app_color.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Image.asset(AppAssets.foodImage),
            SizedBox(
              height: 20,
            ),
            HomeInfo(
              title: 'Categories',
              subTitle: 'see all',
            ),
            SizedBox(
              height: 20,
            ),
            CategoryListView(categoryList: CategoryModel.categoryList),
            HomeInfo(subTitle: 'see all', title: 'Popular deals'),
            SizedBox(
              height: 32,
            ),
            ProductListView(),
          ],
        ),
      ),
    );
  }
}
