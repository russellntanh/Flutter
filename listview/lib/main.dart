import 'dart:developer';

import 'package:flutter/material.dart';
import 'boxContainer.dart';
import 'circleContainer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List _list = [
    'item 1',
    'item 2',
    'item 3',
    'item 4',
    'item 5',
    'item 6',
    'item 7',
    'item 8',
    'item 9',
    'item 10',
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CircleContainer(
                  color: Colors.red,
                ),
                CircleContainer(color: Colors.yellow),
                CircleContainer(color: Colors.green),
                CircleContainer(color: Colors.purple),
                CircleContainer(color: Colors.orange),
                CircleContainer(color: Colors.cyan),
                CircleContainer(color: Colors.amber),
                CircleContainer(color: Colors.pink),
              ],
            )),
            Expanded(
              child: ListView.builder(
                itemCount: _list.length,
                itemBuilder: (context, index) {
                  return BoxContainer(child: _list[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
