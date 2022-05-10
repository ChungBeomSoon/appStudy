import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: TextButton(
            child: Text('Cancel'),
            onPressed: () {
              return;
            },
          ),
          title: Text('New Contract'),
          centerTitle: true,
          actions: [
            TextButton(
              child: Text('Done'),
              onPressed: () {
                return;
              },
            )
          ],
        ),
        body: ListView(children: [
          Container(
              child: IconButton(
            icon: Icon(Icons.person),
            onPressed: () {},
            iconSize: 100,
          )),
          TextField(
            decoration: InputDecoration(
              hintText: 'Firstname',
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Lastname',
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Company',
            ),
          ),
          Container(
            height: 50,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'add phone',
              prefixIcon: Icon(Icons.add),
            ),
          ),
          Container(
            height: 50,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'add phone',
              prefixIcon: Icon(Icons.add),
            ),
          ),
          Container(
            height: 50,
          ),
        ]),
      ),
    );
  }
}
