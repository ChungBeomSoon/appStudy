import 'package:flutter/material.dart';

var mainmenu = Container(
  height: 50,
  child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
    Text(
      '홈',
      textScaleFactor: 1.3,
      style: TextStyle(
        fontWeight: (FontWeight.bold),
      ),
    ),
    Text('기획전', textScaleFactor: 1.3),
    Text('랭킹', textScaleFactor: 1.3),
    Text('브랜드', textScaleFactor: 1.3),
    Text('IT:EM', textScaleFactor: 1.3),
    Text('매거진', textScaleFactor: 1.3),
  ]),
);
