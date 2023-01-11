import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String display = "";
  Color newColor = Colors.red;
  List<Color> myColor = [
    Colors.red,
    Colors.pink,
    Colors.orange,
    Colors.blue,
    Colors.yellow,
    Colors.black,
    Colors.green,
    Colors.lightGreen,
    Colors.purpleAccent,
    Colors.teal,
    Colors.yellowAccent
  ];
  void Reset() {
    setState(() {
      _counter = 0;
      display = "None";
    });
  }

  void _incrementCounter() {
    setState(() {
      int random = Random().nextInt(myColor.length);
      _counter++;
      newColor = myColor[random];
      if (_counter == 0) {
        display = "None";
      } else {
        display = _counter.toString();
      }
    });
  }

  void DecreamentCounter() {
    setState(() {
      int random = Random().nextInt(myColor.length);
      _counter--;
      newColor = myColor[random];
      if (_counter == 0) {
        display = "None";
      } else {
        display = _counter.toString();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              display,
              style: TextStyle(color: newColor, fontSize: 40),
            ),
            ElevatedButton(onPressed: DecreamentCounter, child: Text("-")),
            ElevatedButton(onPressed: _incrementCounter, child: Text("+")),
            ElevatedButton(onPressed: Reset, child: Text("Reset"))
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     setState(() {
      //       newColor = myColor[_counter];
      //     });
      //   },
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
