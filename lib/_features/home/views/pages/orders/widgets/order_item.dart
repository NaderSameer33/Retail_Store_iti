import 'package:flutter/material.dart';
import '../../../../../../helper/ui/app_color.dart';
import '../../../../../../helper/ui/app_text_style.dart';

class OrderItem extends StatelessWidget {
  final int orderId;
  final String status;
  final Color statusColor;
  final String date;
  final String price;

  const OrderItem({
    super.key,
    required this.orderId,
    required this.status,
    required this.statusColor,
    required this.date,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 24,
          backgroundColor: AppColor.primaryColor,
          child: const Icon(
            Icons.shopping_bag_outlined,
            color: Colors.white,
          ),
        ),
        const SizedBox(width: 15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Order #$orderId",
                style: AppTextStyle.kText16Brown.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                status,
                style: TextStyle(
                  color: statusColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                date,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        Text(
          price,
          style: AppTextStyle.kText24Brown.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: AppColor.primaryColor,
          ),
        ),
      ],
    );
  }
}
