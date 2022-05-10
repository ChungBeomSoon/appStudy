import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './style.dart' as style;
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'page.dart';
import 'widget.dart';
import 'store.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (c) => Store1(),
    ),
    ChangeNotifierProvider(
      create: (c) => Store2(),
    )
  ], child: MaterialApp(theme: style.theme, home: MyApp())));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var tab = 0;
  var data = [];
  var userImage;

  getData() async {
    var result = await http
        .get(Uri.parse('https://codingapple1.github.io/app/data.json'));
    var result2 = jsonDecode(result.body);
    setState(() {
      data = result2;
    });
  }

  getNewData() async {
    var newdata = await http
        .get(Uri.parse('https://codingapple1.github.io/app/more1.json'));
    var newdata2 = jsonDecode(newdata.body);
    setState(() {
      data.add(newdata2);
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    String image =
        '{"id": "", "image": "","likes": "0","date": "","content": "","liked": "","user": ""}';
    Map<String, dynamic> uploadImage = jsonDecode(image);

    uploadData() async {
      setState(() {
        data.add(uploadImage);
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Instagram',
        ),
        actions: [
          IconButton(
            onPressed: () async {
              var picker = ImagePicker();
              var image = await picker.pickImage(source: ImageSource.gallery);
              if (image != null) {
                setState(() {
                  userImage = File(image.path);
                  setState(() {
                    uploadImage['image'] = userImage;
                  });
                });
              }
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (c) => Upload(
                            userImage: userImage,
                            uploadData: uploadData,
                            uploadImage: uploadImage,
                            data: data,
                          )));
            },
            icon: Icon(
              Icons.add_box_outlined,
            ),
          ),
        ],
      ),
      body: [
        home(data: data, getNewData: getNewData, userImage: userImage),
        Text('shop')
      ][tab],
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (i) {
            setState(() {
              tab = i;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: '홈'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shop_outlined), label: '샵'),
          ]),
    );
  }
}
