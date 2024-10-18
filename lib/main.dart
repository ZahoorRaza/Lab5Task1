import 'dart:collection';

import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isAnimate = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.amberAccent,
        appBar: AppBar(
          title: Text("Animated Button"),
          foregroundColor: Colors.white,
          backgroundColor: Colors.black26,
          centerTitle: true,
        ),
        body: Column(
            children: [
              SizedBox(height: 200,width: 200,),
              Container(
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: AnimatedContainer(
                      duration: Duration(
                        seconds: 2,
                      ),
                      height: isAnimate ? 200:100,
                      width: isAnimate ? 200:100,
                        curve: Curves.easeInOut,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: isAnimate?
                              [Colors.red,Colors.blue]:[Colors.blue,Colors.green],
                          )
                        ),
                      child: AnimatedOpacity(opacity: isAnimate? 1:0.5,
                      duration: Duration(seconds: 2),
                          ),

                    ),

                      ),

                ),
              ),
              ElevatedButton(onPressed: (){
                setState(() {
                  isAnimate = !isAnimate;
                });
              }, child: Text("Change"))
            ],
          ),
      ),
    );
  }
}
