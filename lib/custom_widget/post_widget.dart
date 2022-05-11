import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget getBlogPost({required String imageName,required String title}) {
  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Image(
          image: AssetImage('images/${imageName}'),
        ),
      ),
      SizedBox(height: 20),
      Text(
        '${title}',
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF85586F),
        ),
      ),
      SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'فروش روی : 100،000',
            style: TextStyle(
                fontSize: 14.0, fontWeight: FontWeight.w300, color: Colors.red),
          ),
          SizedBox(width: 10),
          Icon(
            Icons.sell,
            color: Colors.red,
            size: 24.0,
          ),
          SizedBox(width: 15),
          Text(
            'خرید روی : 34،000',
            style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w300,
                color: Colors.green),
          ),
          SizedBox(width: 10),
          Icon(
            Icons.price_check,
            color: Colors.green,
            size: 24.0,
          ),
        ],
      ),
      SizedBox(height: 20),
      Container(
        width: 200,
        child: Divider(
          color: Color(0xFF85586F),
          thickness: 1,
        ),
      ),
      SizedBox(height: 20),
    ],
  );
}
