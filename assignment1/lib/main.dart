// ignore_for_file: use_key_in_widget_constructors, todo

import 'package:flutter/material.dart';
import 'dart:math';

//https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e

//This app makes use of the Row, Column,
//Expanded, Padding, Transform, Container,
//BoxDecoration, BoxShape, Colors,
//Border, Center, Align, Alignment,
//EdgeInsets, Text, and TextStyle Widgets
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //first level widget of Material Design
      home: Scaffold(
        //default route
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text("App1 - UI Layout"),
          backgroundColor: Colors.blue,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            //TODO: Put your code here to complete this app.
            Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      border: Border.all(color: Colors.black, width: 3),
                    ),
                    child: const Center(
                      child: Text('Container 1'),
                    ),
                  ),
                ),
                Transform.rotate(
                  angle: pi / 4,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 77, 77, 77),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Text('Container 2'),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              // 2
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(color: Colors.yellow),
                      child: const Align(
                        alignment: Alignment.bottomCenter,
                        child: Text('Container 3'),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(color: Colors.blue),
                      child: const Align(
                        alignment: Alignment.centerRight,
                        child: Text('Container 4'),
                      ),
                    ),
                  ),
                ),
              ],
            ), //2
            Column(
              // 3
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 3),
                      ),
                      child: const Center(
                        child: Text(
                          'Container 5',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(color: Colors.red),
                    child: const Text(
                      'Con 6',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ],
            ), //3
          ],
        ),
      ),
    );
  }
}
