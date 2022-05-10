import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var name = ['Alex', 'Tony', 'Son'];
  var total = 3;
  var like = [0, 0, 0];

  addFriendsNumber() {
    setState(() {
      total++;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return DialogUI(addone: addFriendsNumber);
              });
        },
      ),
      appBar: AppBar(title: Text(total.toString())),
      body: ListView.builder(
          itemCount: total,
          itemBuilder: ((context, i) {
            return ListTile(
              leading: Icon(Icons.person),
              title: Text(name[i]),
            );
          })),
    );
  }
}

class DialogUI extends StatelessWidget {
  DialogUI({Key? key, this.addone}) : super(key: key);
  final addone;
  var inputData = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Add your Friends'),
      content: SingleChildScrollView(
          child: ListBody(
        children: [
          Text('Alert Dialog'),
          Text('click ok button'),
        ],
      )),
      actions: [
        TextField(
          controller: inputData,
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
            addone();
          },
          child: Text('ok'),
        ),
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('cancel')),
      ],
    );
  }
}
