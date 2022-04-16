import 'dart:math';

import 'package:flutter/material.dart';
import './style.dart' as style;
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

void main() {
  runApp(MaterialApp(theme: style.theme, home: MyApp()));
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

class home extends StatefulWidget {
  home({Key? key, this.data, this.getNewData, this.userImage})
      : super(key: key);
  var data;
  final getNewData;
  final userImage;
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final textbold = TextStyle(fontWeight: FontWeight.bold);

  var scroll = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scroll.addListener(() {
      if (scroll.position.pixels == scroll.position.maxScrollExtent) {
        widget.getNewData();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (widget.data.isNotEmpty) {
      return ListView.builder(
        itemCount: widget.data.length,
        controller: scroll,
        itemBuilder: (c, i) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageSelect(data: widget.data, i: i),
              Text(
                '좋아요' + widget.data[i]['likes'].toString(),
                style: textbold,
                textAlign: TextAlign.left,
              ),
              Text(
                widget.data[i]['user'],
                textAlign: TextAlign.left,
              ),
              Text(
                widget.data[i]['content'],
                textAlign: TextAlign.left,
              ),
            ],
          );
        },
      );
    } else {
      return Text('loading..');
    }
  }
}

class Upload extends StatelessWidget {
  Upload(
      {Key? key, this.userImage, this.uploadData, this.uploadImage, this.data})
      : super(key: key);
  final userImage;
  var uploadData;
  var uploadImage;
  final data;
  final textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  uploadData();
                  uploadImage['content'] = textController.text;
                  print(userImage);
                },
                child: Text('Upload'))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.file(
                userImage,
                fit: BoxFit.fitWidth,
                width: 420,
                height: 420,
              ),
              TextField(
                decoration:
                    InputDecoration.collapsed(hintText: '여기에 글을 입력해주세요.'),
                controller: textController,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close)),
            ],
          ),
        ));
  }
}

class ImageSelect extends StatefulWidget {
  ImageSelect({Key? key, this.data, this.i}) : super(key: key);
  var data;
  var i;

  @override
  State<ImageSelect> createState() => _ImageSelectState();
}

class _ImageSelectState extends State<ImageSelect> {
  @override
  Widget build(BuildContext context) {
    if (widget.data[widget.i]['image'].toString().startsWith('File')) {
      return Image.file(
        widget.data[widget.i]['image'],
        fit: BoxFit.fitWidth,
        width: 420,
        height: 420,
      );
    } else {
      return Image.network(widget.data[widget.i]['image']);
    }
  }
}
