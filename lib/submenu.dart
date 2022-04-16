import 'package:flutter/material.dart';

var submenu1 = Container(
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
  Container(
      child: Column(children: [
    Image.asset('assets/여성.JPG'),
    Text('여성'),
  ])),
  Container(
      child: Column(children: [
    Image.asset('assets/남성.JPG'),
    Text('남성'),
  ])),
  Container(
      child: Column(children: [
    Image.asset('assets/키즈.JPG'),
    Text('키즈'),
  ])),
  Container(
      child: Column(children: [
    Image.asset('assets/리세일.JPG'),
    Text('리세일'),
  ])),
  Container(
      child: Column(children: [
    Image.asset('assets/아울렛.JPG'),
    Text('아울렛'),
  ])),
]));

var submenu2 = Container(
  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
    Container(
        child: Column(children: [
      Image.asset('assets/하이엔드.JPG'),
      Text('하이엔드'),
    ])),
    Container(
        child: Column(children: [
      Image.asset('assets/캣맘럭셔리.JPG'),
      Text('컨템럭셔리'),
    ])),
    Container(
        child: Column(children: [
      Image.asset('assets/스니커즈.JPG'),
      Text('스니커즈'),
    ])),
    Container(
        child: Column(children: [
      Image.asset('assets/홈리빙.JPG'),
      Text('홈리빙'),
    ])),
    Container(
        child: Column(children: [
      Image.asset('assets/리퍼브.JPG'),
      Text('리퍼브'),
    ])),
  ]),
);
