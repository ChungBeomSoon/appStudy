import 'package:flutter/material.dart';

var theme = ThemeData(
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: Colors.black,
  ),
  iconTheme: IconThemeData(color: Colors.black),
  appBarTheme: AppBarTheme(
    actionsIconTheme: IconThemeData(color: Colors.black, size: 30),
    color: Colors.white,
    titleTextStyle: TextStyle(color: Colors.black, fontSize: 25),
    elevation: 1,
  ),
);
