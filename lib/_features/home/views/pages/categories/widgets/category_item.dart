import 'package:flutter/material.dart';
import '../model/category_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.model
  });

   final CategoryModel model ; 

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: model.color, 
          radius: 50,
          child: Image.asset(
            model.image,
            height: 80,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          model.title,
          style: TextStyle(
            color: Color(0xff6D3805),
            fontWeight: FontWeight.w400,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
