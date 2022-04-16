import 'package:flutter/material.dart';

var bottom = BottomAppBar(
  child: Container(
    color: Colors.white,
    height: 50,
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        Icon(Icons.menu, size: 30),
        Text('카테고리'),
      ]),
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(
            Icons.card_giftcard,
            size: 30,
          ),
          Text('이벤트'),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(
            Icons.home,
            size: 30,
          ),
          Text('홈'),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(
            Icons.shopping_bag_outlined,
            size: 30,
          ),
          Text('뉴 시즌'),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(
            Icons.person,
            size: 30,
          ),
          Text('마이'),
        ],
      ),
    ]),
  ),
);
