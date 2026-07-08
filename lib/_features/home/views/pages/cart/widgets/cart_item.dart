import 'package:flutter/material.dart';
import '../../home/model/product_model.dart';
import '../../../../../../helper/ui/app_color.dart';
import '../../../../../../helper/ui/app_text_style.dart';
import 'counter.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
    required this.model,
  });
  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      direction: DismissDirection.endToStart,
      background: Container(
        alignment: Alignment.centerRight,
        color: Colors.red,
        child: Icon(
          Icons.delete,
          color: AppColor.whiteColor,
          size: 30,
        ),
      ),

      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        height: 81,
        decoration: BoxDecoration(
          color: AppColor.whiteColor,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 61,
                width: 61,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 12),
                      color: Colors.black.withValues(alpha: .25),
                      blurRadius: 20,
                      spreadRadius: -7,
                    ),
                  ],
                ),
                child: Image.asset(model.image),
              ),
            ),
            SizedBox(
              width: 26,
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  model.title,

                  style: AppTextStyle.kText16Brown.copyWith(fontSize: 18),
                ),
                SizedBox(
                  height: 5,
                ),
                Counter(),
              ],
            ),
            Spacer(),
            Text(
              model.price,
              style: AppTextStyle.kText16Brown.copyWith(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
