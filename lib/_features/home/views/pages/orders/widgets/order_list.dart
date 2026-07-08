import 'package:flutter/material.dart';
import 'order_item.dart';

class OrdersList extends StatelessWidget {
  const OrdersList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      itemCount: 3,
      separatorBuilder: (_, __) => const Divider(height: 25),
      itemBuilder: (context, index) {
        return const OrderItem(
          orderId: 345,
          status: "Delivered",
          statusColor: Colors.green,
          date: "October 26, 2014",
          price: "\$700",
        );
      },
    );
  }
}
