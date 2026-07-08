import 'package:flutter/material.dart';
import '../model/product_model.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.model,
  });
  final ProductModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12),
      padding: EdgeInsets.all(8),
      // height: 180,
      width: 154,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 0),
            blurRadius: 5,
            spreadRadius: 2,
            color: Color(0xffC4C4C4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Image.asset(
              model.image,
              height: 74,
            ),
          ),
          SizedBox(
            height: 20,
          ),

          Text(
            model.title,
            style: TextStyle(
              color: Color(0xff6D3805),
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          Text(
            model.weight ?? '',

            style: TextStyle(
              color: Color(0xff929292),
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                model.price,
                style: TextStyle(
                  color: Color(0xffFF5E00),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              CircleAvatar(
                backgroundColor: Color(0xff3AA14C),
                radius: 15,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
