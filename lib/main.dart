import 'package:flutter/material.dart';
import 'package:assignment2/appbar.dart';
import 'package:assignment2/searchbar.dart';
import 'package:assignment2/mainmenu.dart';
import 'package:assignment2/pageview.dart';
import 'package:assignment2/submenu.dart';
import 'package:assignment2/bottom.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/rendering.dart';
import 'dart:io';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var scroll = ScrollController();
  var data = [];

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
    String json =
        '{"list1" : {"image" : "download.jpg", "name" : "first"}, "list2" : {"image" : "2118256255_0.jpg", "name" : "second"}}';
    Map<String, dynamic> usermap = jsonDecode(json);

    return MaterialApp(
        home: Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          return;
        },
        child: Icon(
          Icons.keyboard_control_key,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
      appBar: top,
      body: ListView(
        controller: scroll,
        children: [
          searchbar,
          mainmenu,
          PictureSlideShow(),
          submenu1,
          submenu2,
          Itemlist(
              json: json, scroll: scroll, getNewData: getNewData, data: data)
        ],
      ),
      bottomNavigationBar: bottom,
    ));
  }
}

class PictureSlideShow extends StatefulWidget {
  @override
  _PictureSlideShowState createState() => _PictureSlideShowState();
}

class _PictureSlideShowState extends State<PictureSlideShow> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: CarouselSlider(
      options: CarouselOptions(
          height: 200.0, enlargeCenterPage: true, autoPlay: true),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: 400,
              height: 400,
              margin: EdgeInsets.all(0.5),
              child: Center(
                child: Image.asset('assets/capture.jpg.JPG'),
              ),
            );
          },
        );
      }).toList(),
    ));
  }
}

class Itemlist extends StatefulWidget {
  Itemlist({Key? key, this.json, this.scroll, this.getNewData, this.data})
      : super(key: key);
  final json;
  var scroll;
  final getNewData;
  var data;
  @override
  State<Itemlist> createState() => _ItemlistState();
}

class _ItemlistState extends State<Itemlist> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.scroll.addListener(() {
      if (widget.scroll.position.pixels ==
          widget.scroll.position.maxScrollExtent) {
        widget.getNewData();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: widget.data.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1,
      ),
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          child: Image.network(widget.data[index]['image']),
        );
      },
    );
  }
}
