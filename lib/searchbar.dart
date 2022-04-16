import 'package:flutter/material.dart';

var searchbar = Padding(
  padding: const EdgeInsets.all(15.0),
  child: TextField(
    decoration: InputDecoration(
      filled: true,
      fillColor: Color.fromARGB(255, 243, 243, 243),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50), borderSide: BorderSide.none),
      hintText: 'Today is the first day you live',
      suffixIcon: Icon(
        Icons.search,
        color: Colors.grey,
        size: 35,
      ),
    ),
  ),
);
