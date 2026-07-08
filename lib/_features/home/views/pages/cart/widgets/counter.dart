
import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({
    super.key,
  });

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4),
      height: 30,
      width: 98,
      decoration: BoxDecoration(
        color: Color(0xffF4F4F4),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              if (count == 0) {
                return;
              }

              setState(() {
                count--;
              });
            },
            child: CircleAvatar(
              radius: 12,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.remove,
                color: Color(0xff6D3805),
              ),
            ),
          ),
          Text(
            count.toString(),
            style: TextStyle(
              color: Color(0xff6D3805),
              fontWeight: FontWeight.w400,
              fontSize: 15,
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                count++;
              });
            },
            child: CircleAvatar(
              radius: 12,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.add,
                color: Color(0xff6D3805),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
