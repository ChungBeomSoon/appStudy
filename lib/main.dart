import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const IconData my_library_books_outlined = IconData(0xf160, fontFamily: 'MaterialIcons');
  static const IconData location_history = IconData(0xe498, fontFamily: 'MaterialIcons');
  static const IconData wechat = IconData(0xf05a5, fontFamily: 'MaterialIcons');
  static const IconData person = IconData(0xe491, fontFamily: 'MaterialIcons');
  static const IconData keyboard_arrow_down = IconData(0xe353, fontFamily: 'MaterialIcons');

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Container(
              child: (
                Row(
                  children: [
                     Text('도농동',
                      style: TextStyle(color: Colors.black),),
                    Icon(Icons.keyboard_arrow_down, size: 40,color: Colors.black,),
                  ],
                )
              ),
            ),
            actions: const [
              Icon(Icons.youtube_searched_for_rounded,size:40, color: Colors.black,),
              Icon(Icons.wrap_text,size:40, color: Colors.black,),
              Icon(Icons.add_alert,size:40, color: Colors.black,)
            ],
          ),
          body: Column(
            children: [
              Container(
                decoration:BoxDecoration(
                  border:Border(top: BorderSide(width: 2, color:Colors.grey))
                ),
                width: 500,
                height: 150,
                child:(
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular((20.0)),
                        child: Image.asset(
                          'download.jpg',
                          width: 150,
                          height: 150,
                          alignment:Alignment.centerLeft,
                          fit: BoxFit.fitHeight,
                        ),
                      ),

                      Container(
                        width: 300,

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              child: Text('나이키 머큐리얼 축구화',
                                textAlign:TextAlign.left,
                                    style:TextStyle(fontSize: 20, letterSpacing:1.5,
                                height: 1.7),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              child: Text('도농동, 끌올 1분 전',
                                textAlign:TextAlign.left,
                                style:TextStyle(fontSize: 15, letterSpacing: 1.5,
                                    height: 1.7, color:Colors.grey),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              child: Text('1100000원',
                                textAlign:TextAlign.left,
                                style:TextStyle(fontSize: 18, letterSpacing: 1.5,
                                    height: 1.7, fontWeight:FontWeight.w900,),
                            ),
                            ),
                            Container(
                              width: double.infinity,
                              alignment:Alignment.bottomRight,
                              height: 50,
                              child:Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.favorite,),
                                Text('5'),
                                Icon(Icons.comment),
                                Text('10'),
                              ],
                            ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                )
              ),
              Container(
                  decoration:BoxDecoration(
                      border:Border(top: BorderSide(width: 2, color:Colors.grey))
                  ),
                  width: 500,
                  height: 150,
                  child:(
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular((20.0)),
                            child: Image.asset(
                              '2118256255_0.jpg',
                              width: 150,
                              height: 150,
                              alignment:Alignment.centerLeft,
                              fit: BoxFit.fitHeight,
                            ),
                          ),

                          Container(
                            width: 300,

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: double.infinity,
                                  child: Text('나이키 머큐리얼 축구화',
                                    textAlign:TextAlign.left,
                                    style:TextStyle(fontSize: 20, letterSpacing:1.5,
                                        height: 1.7),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  child: Text('도농동, 끌올 1분 전',
                                    textAlign:TextAlign.left,
                                    style:TextStyle(fontSize: 15, letterSpacing: 1.5,
                                        height: 1.7, color:Colors.grey),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  child: Text('1100000원',
                                    textAlign:TextAlign.left,
                                    style:TextStyle(fontSize: 18, letterSpacing: 1.5,
                                      height: 1.7, fontWeight:FontWeight.w900,),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  alignment:Alignment.bottomRight,
                                  height: 50,
                                  child:Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Icon(Icons.favorite,),
                                      Text('5'),
                                      Icon(Icons.comment),
                                      Text('10'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                  )
              ),
              Container(
                  decoration:BoxDecoration(
                      border:Border(top: BorderSide(width: 2, color:Colors.grey))
                  ),
                  width: 500,
                  height: 150,
                  child:(
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular((20.0)),
                            child: Image.asset(
                              'download.jpg',
                              width: 150,
                              height: 150,
                              alignment:Alignment.centerLeft,
                              fit: BoxFit.fitHeight,
                            ),
                          ),

                          Container(
                            width: 300,

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: double.infinity,
                                  child: Text('나이키 머큐리얼 축구화',
                                    textAlign:TextAlign.left,
                                    style:TextStyle(fontSize: 20, letterSpacing:1.5,
                                        height: 1.7),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  child: Text('도농동, 끌올 1분 전',
                                    textAlign:TextAlign.left,
                                    style:TextStyle(fontSize: 15, letterSpacing: 1.5,
                                        height: 1.7, color:Colors.grey),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  child: Text('1100000원',
                                    textAlign:TextAlign.left,
                                    style:TextStyle(fontSize: 18, letterSpacing: 1.5,
                                      height: 1.7, fontWeight:FontWeight.w900,),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  alignment:Alignment.bottomRight,
                                  height: 50,
                                  child:Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Icon(Icons.favorite,),
                                      Text('5'),
                                      Icon(Icons.comment),
                                      Text('10'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                  )
              ),

            ],
          ),
          bottomNavigationBar:BottomAppBar(
            child:Container(

              height: 70,
              child: (
                Row(
                  mainAxisAlignment:MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children:[
                      Icon(Icons.water_damage, size:40,),
                      Text('홈', textScaleFactor:0.8,)
                      ]
                    ),
                    Column(
                        children:[
                        Icon(Icons.my_library_books_outlined,size:40),
                        Text('동네생활', textScaleFactor:0.8,)
                        ]
                    ),
                    Column(
                        children:[
                        Icon(Icons.location_history,size:40),
                      Text('내 근처', textScaleFactor:0.8,)
                        ]
                    ),
                    Column(
                        children:[
                        Icon(Icons.wechat,size:40),
                      Text('채팅', textScaleFactor:0.8, )
                        ]
                    ),
                    Column(
                        children:[
                        Icon(Icons.person,size:40),
                      Text('나의 당근', textScaleFactor:0.8,)
                        ]
                    ),
                  ],
                )
              ),
            )

        ),
        )
    );
  }
}

