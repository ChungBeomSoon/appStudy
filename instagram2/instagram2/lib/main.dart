import 'package:flutter/material.dart';
import './style.dart' as style;

void main() {
  runApp(MaterialApp(theme: style.theme, home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Icon(Icons.star),
    );
  }
}
