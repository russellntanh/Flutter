import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  boxMethod('Box 1', 150, 150, Alignment.bottomRight),
                  boxMethod('Box 2', 150, 150, Alignment.bottomLeft),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  boxMethod('Box 3', 150, 150, Alignment.topRight),
                  boxMethod('Box 4', 150, 150, Alignment.topLeft),
                ],
              ),
            ],
          ),
          Center(
              child: boxMethod('Hello World', 200, 200, Alignment.center, true))
        ]),
      ),
    );
  }

  Container boxMethod(String name, double w, double h, Alignment alignment,
      [bool radius = false]) {
    return Container(
      decoration: BoxDecoration(
          color: radius ? Colors.green : Colors.blue,
          borderRadius: BorderRadius.circular(radius ? 100 : 0)),
      alignment: alignment,
      width: w,
      height: h,
      child: Text(
        name,
        style: const TextStyle(fontSize: 30, color: Colors.red),
      ),
    );
  }
}
