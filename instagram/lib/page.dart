import 'dart:io';

import 'package:flutter/material.dart';

import 'main.dart';
import 'widget.dart';

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
              widget.data[i]['image'].runtimeType == String
                  ? Image.network(widget.data[i]['image'])
                  : Image.file(widget.data[i]['image']),
              Text(
                '좋아요' + widget.data[i]['likes'].toString(),
                style: textbold,
                textAlign: TextAlign.left,
              ),
              GestureDetector(
                child: Text(
                  widget.data[i]['user'],
                  textAlign: TextAlign.left,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                          pageBuilder: (c, a1, a2) => Profile(),
                          transitionsBuilder: (c, a1, a2, child) =>
                              FadeTransition(
                                opacity: a1,
                                child: child,
                              ),
                          transitionDuration: Duration()));
                },
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
