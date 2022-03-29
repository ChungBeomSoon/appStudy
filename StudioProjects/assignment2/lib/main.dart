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
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: Text(
                'tren:be',
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ],
                )
              ],
            ),
            body: SingleChildScrollView(
              child: Container(
                height: 800,
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 243, 243, 243),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: BorderSide.none),
                          hintText: 'Today is the first day you live',
                          suffixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                            size: 35,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              '홈',
                              textScaleFactor: 1.3,
                              style: TextStyle(
                                fontWeight: (FontWeight.bold),
                              ),
                            ),
                            Text('기획전', textScaleFactor: 1.3),
                            Text('랭킹', textScaleFactor: 1.3),
                            Text('브랜드', textScaleFactor: 1.3),
                            Text('IT:EM', textScaleFactor: 1.3),
                            Text('매거진', textScaleFactor: 1.3),
                          ]),
                    ),
                    Container(
                      child: Image.asset('assets/capture.jpg.JPG'),
                    ),
                    Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
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
                        ])),
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
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
                    )
                  ],
                ),
              ),
            ),
            bottomNavigationBar: BottomAppBar(
              child: Container(
                color: Colors.white,
                height: 50,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.menu, size: 30),
                            Text('카테고리'),
                          ]),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.card_giftcard,
                            size: 30,
                          ),
                          Text('이벤트'),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.home,
                            size: 30,
                          ),
                          Text('홈'),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.shopping_bag_outlined,
                            size: 30,
                          ),
                          Text('뉴 시즌'),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.person,
                            size: 30,
                          ),
                          Text('마이'),
                        ],
                      ),
                    ]),
              ),
            )));
  }
}
