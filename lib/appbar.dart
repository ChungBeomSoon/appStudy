import 'package:flutter/material.dart';

var top = AppBar(
  backgroundColor: Colors.white,
  title: Text(
    'tren:be',
    style: TextStyle(
        color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
  ),
  actions: [
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Icon(
            Icons.favorite_border,
            color: Colors.black,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Icon(
            Icons.shopping_bag_outlined,
            color: Colors.black,
          ),
        ),
      ],
    )
  ],
);
