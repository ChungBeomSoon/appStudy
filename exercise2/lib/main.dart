import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var a = 1;
  var name = ['BeomSoon', 'Alex', 'Tony'];
  var count = [0, 0, 0];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          floatingActionButton: FloatingActionButton(
            child: Text(a.toString()),
            onPressed: () {
              setState(() {
                a++;
              });
            },
          ),
          appBar: AppBar(
            title: Text('Contact'),
          ),
          body: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Text(count[index].toString()),
                  title: Text(name[index]),
                  trailing: TextButton(
                      child: Text('Like!'),
                      onPressed: () {
                        setState(() {
                          count[index]++;
                        });
                      }),
                );
              }),
          bottomNavigationBar: bottomAppBar()),
    );
  }
}

class bottomAppBar extends StatelessWidget {
  const bottomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        children: [
          Icon(Icons.book, size: 50),
          Icon(Icons.call, size: 50),
          Icon(Icons.person, size: 50),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceAround,
      ),
    );
  }
}

// 커스텀 위젯 만드는 법
// class ShopItem extends StatelessWidget {
//   const ShopItem({Key? key}) : super(key: key);

//   @override
//   build(context) {
//     return Container();
//   }
// }

// // 변수, 함수 문법으로도축약 가능
// var a = SizedBox(
//   child: Text('안녕'),
// );
