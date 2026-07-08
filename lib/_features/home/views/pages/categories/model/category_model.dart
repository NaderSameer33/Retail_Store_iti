import 'package:flutter/material.dart';
import '../../../../../../helper/logic/app_assets.dart';

class CategoryModel {
  final String image, title;
  final Color color;
  const CategoryModel({
    required this.image,
    required this.title,
    required this.color,
  });

  static const categoryList = [
    CategoryModel(
      image: AppAssets.enabImage,
      title: 'fruits',
      color: Color(0xffEDD0FF),
    ),
    CategoryModel(
      image: AppAssets.procleImage,
      title: 'vegitibles',
      color: Color(0xffFFD9BA),
    ),
    CategoryModel(
      image: AppAssets.meatImage,
      title: 'meat',
      color: Color(0xffFACCCC),
    ),
    CategoryModel(
      image: AppAssets.fishImage,
      title: 'fish',
      color: Color(0xffFACCCC),
    ),
    CategoryModel(
      image: AppAssets.juiceImage,
      title: 'juice',
      color: Color(0xffD3E5C4),
    ),
    CategoryModel(
      image: AppAssets.iceCreamImage,
      title: 'ice cream',
      color: Color(0xffFFDEF6),
    ),
  ];
}
