import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(ContainerDemo());
}

class ContainerDemo extends StatefulWidget {
  const ContainerDemo({Key key}) : super(key: key);

  @override
  State<ContainerDemo> createState() => _ContainerDemoState();
}

class _ContainerDemoState extends State<ContainerDemo> {
  double random1 = Random().nextDouble() * 100;
  double random2 = Random().nextDouble() * 600;
  Color newColor = Colors.red;
  List<Color> myColor = [
    Colors.red,
    Colors.pink,
    Colors.orange,
    Colors.blue,
    Colors.yellow,
    Colors.green,
    Colors.lightGreen,
    Colors.purpleAccent,
    Colors.teal,
    Colors.yellowAccent
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              alignment: Alignment.center,
              width: random2,
              height: random2,
              child: Text(
                "Sehrish",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              decoration: BoxDecoration(
                // shape: BoxShape.circle,
                color: newColor,
                borderRadius: BorderRadius.circular(random1),
                // topRight: Radius.circular(30),
                // topLeft: Radius.circular(30))
              ),
            ),
          ),
          // ElevatedButton(
          //     onPressed: () {
          //       setState(() {
          //         random1 = Random().nextDouble() * 100;
          //         random2 = Random().nextDouble() * 600;
          //       });
          //     },
          //     child: Text("Change shape")),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  random1 = Random().nextDouble() * 100;
                  random2 = Random().nextDouble() * 600;
                  int random = Random().nextInt(myColor.length);
                  newColor = myColor[random];
                });
              },
              child: Text("Change Color & Shape"))
        ],
      ),
    );
  }
}
