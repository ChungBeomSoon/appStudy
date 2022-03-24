import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text('도농동',
              style: TextStyle(color: Colors.black),),

            actions: const [
              Icon(Icons.youtube_searched_for_rounded, color: Colors.black,),
              Icon(Icons.wrap_text, color: Colors.black,),
              Icon(Icons.add_alert, color: Colors.black,)
            ],
          ),
          body: Column(
            children: [
              Container(
                decoration:BoxDecoration(
                  border:Border(top: BorderSide(width: 2, color:Colors.grey))
                ),
                width: 600,
                height: 300,
                child:(
                  Row(
                    children: [
                      Container(
                        width: 200,
                        height: 200,
                        decoration:BoxDecoration(borderRadius:BorderRadius.circular(10)),


                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              width: 400,
                              height: 50,
                            ),
                            Container(
                              width: 400,
                              height: 50,
                            ),
                            Container(
                              width: 400,
                              height: 50,
                            ),
                            Container(
                              width: 400,
                              height: 50,
                              alignment: Alignment.bottomRight,
                              child: (
                                Icon(Icons.add)
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                )
              )
            ],
          )
        )
    );
  }
}

