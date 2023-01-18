import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Center(child: MyHomePage(title: "My Pictures")),
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
  List<Widget> MyContainer = [
    Container(
      margin: EdgeInsets.all(20),
      width: 400,
      height: 400,
      child: Text(
        " We are like butterflies who flutter for a day and think it is forever...",
        style: TextStyle(color: Colors.white70, fontSize: 20),
      ),
      decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/pic (1).jpg"),
        ),
      ),
    ),
    Container(
      margin: EdgeInsets.all(20),
      width: 400,
      height: 400,
      child: Text(
        " The darker the night, the brighter the stars...",
        style: TextStyle(color: Colors.white70, fontSize: 20),
      ),
      decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/pic (2).jpg"),
        ),
      ),
    ),
    Container(
      margin: EdgeInsets.all(20),
      width: 400,
      height: 400,
      child: Text(
        " Shine like diamond...",
        style: TextStyle(color: Colors.white70, fontSize: 20),
      ),
      decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/pic (3).jpg"),
        ),
      ),
    ),
    Container(
      margin: EdgeInsets.all(20),
      width: 400,
      height: 400,
      child: Text(
        " Love yourself first...",
        style: TextStyle(color: Colors.white70, fontSize: 20),
      ),
      decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/pic (4).jpg"),
        ),
      ),
    ),
    Container(
      margin: EdgeInsets.all(20),
      width: 400,
      height: 400,
      child: Text(
        " she who leaves a trial of glitter is never forgotten...",
        style: TextStyle(color: Colors.white70, fontSize: 20),
      ),
      decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/pic (5).jpg"),
        ),
      ),
    ),
    Container(
      margin: EdgeInsets.all(20),
      width: 400,
      height: 400,
      child: Text(
        " The best view comes after the hardest climb...",
        style: TextStyle(color: Colors.white70, fontSize: 20),
      ),
      decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/pic (6).jpg"),
        ),
      ),
    ),
    Container(
      margin: EdgeInsets.all(20),
      width: 400,
      height: 400,
      child: Text(
        " Where the earth ends, heaven starts...",
        style: TextStyle(color: Colors.white70, fontSize: 20),
      ),
      decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/pic (7).jpg"),
        ),
      ),
    ),
    Container(
      margin: EdgeInsets.all(20),
      width: 400,
      height: 400,
      child: Text(
        " Everyone is a moon, and has a dark side which he never shows to anybody...",
        style: TextStyle(color: Colors.white70, fontSize: 20),
      ),
      decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/pic (8).jpg"),
        ),
      ),
    ),
    Container(
      margin: EdgeInsets.all(20),
      width: 400,
      height: 400,
      child: Text(
        " Go with a flow...",
        style: TextStyle(color: Colors.white70, fontSize: 20),
      ),
      decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/pic (9).jpg"),
        ),
      ),
    ),
    Container(
      margin: EdgeInsets.all(20),
      width: 400,
      height: 400,
      child: Text(
        " You better treat her like your queen, if you want to be treated like a king...",
        style: TextStyle(color: Colors.white70, fontSize: 20),
      ),
      decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/pic (10).jpg"),
        ),
      ),
    ),
  ];
  List<Widget> AddContainer = [];
  // int _counter = 0;

  void _incrementCounter() {
    setState(() {
      int random = Random().nextInt(10);
      // if (_counter == 10) {
      //   _counter = 0;
      // } else {
      AddContainer.add(MyContainer[random]);
      // _counter++;
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: AddContainer,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: Icon(Icons.add_to_photos_rounded),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
