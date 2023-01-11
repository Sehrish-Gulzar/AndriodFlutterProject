import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Center(child: MyHomePage(title: " ~~FERRARI CATEGORIES~~")),
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
  Color newColor = Colors.black;
  List<Color> myColor = [
    Colors.yellow,
    Colors.purple,
    Colors.blue,
    Colors.black,
    Colors.red,
    Colors.blueGrey,
  ];
  List<Widget> MyContainer = [
    Container(
      margin: EdgeInsets.all(20),
      width: 400,
      height: 400,
      child: Text(
        "Yellow ",
        style: TextStyle(color: Colors.white70, fontSize: 20),
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/Ferrari (1).jpg"),
        ),
      ),
    ),
    Container(
      margin: EdgeInsets.all(20),
      width: 400,
      height: 400,
      child: Text(
        " purple",
        style: TextStyle(color: Colors.white70, fontSize: 20),
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/Ferrari (2).jpg"),
        ),
      ),
    ),
    Container(
      margin: EdgeInsets.all(20),
      width: 400,
      height: 400,
      child: Text(
        " blue",
        style: TextStyle(color: Colors.white70, fontSize: 20),
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/Ferrari (3).jpg"),
        ),
      ),
    ),
    Container(
      margin: EdgeInsets.all(20),
      width: 400,
      height: 400,
      child: Text(
        " black",
        style: TextStyle(color: Colors.white70, fontSize: 20),
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/Ferrari (4).jpg"),
        ),
      ),
    ),
    Container(
      margin: EdgeInsets.all(20),
      width: 400,
      height: 400,
      child: Text(
        " Red",
        style: TextStyle(color: Colors.white70, fontSize: 20),
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/Ferrari (5).jpg"),
        ),
      ),
    ),
    Container(
      margin: EdgeInsets.all(20),
      width: 400,
      height: 400,
      child: Text(
        " White",
        style: TextStyle(color: Colors.white70, fontSize: 20),
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/Ferrari (7).jpg"),
        ),
      ),
    ),
  ];
  List<Widget> AddContainer = [
    Container(
      margin: EdgeInsets.all(20),
      width: 400,
      height: 400,
      child: Center(
        child: Text(
          "\tIf you want to see image\n          tap text bellow  ",
          style: TextStyle(color: Colors.white70, fontSize: 20),
        ),
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black,
        image: DecorationImage(
          image: AssetImage(
            "",
          ),
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  AddContainer[0],
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              child: RichText(
                                text: TextSpan(
                                  text: ('Yellow Ferrari \t \t'),
                                  style: TextStyle(
                                      color: newColor,
                                      fontSize: 30,
                                      height: 2,
                                      backgroundColor: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      setState(() {
                                        AddContainer[0] = MyContainer[0];
                                        newColor = myColor[0];
                                      });
                                    },
                                  children: [
                                    TextSpan(
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          setState(() {
                                            AddContainer[0] = MyContainer[1];
                                            newColor = myColor[1];
                                          });
                                        },
                                      text: ('Purple Ferrari \t \t'),
                                      style: TextStyle(
                                          color: newColor,
                                          fontSize: 30,
                                          backgroundColor: Colors.black26,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          setState(() {
                                            AddContainer[0] = MyContainer[2];
                                            newColor = myColor[2];
                                          });
                                        },
                                      text: ('Blue Ferrari \t \t \n'),
                                      style: TextStyle(
                                          color: newColor,
                                          fontSize: 30,
                                          backgroundColor: Colors.grey,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          setState(() {
                                            AddContainer[0] = MyContainer[3];
                                            newColor = myColor[3];
                                          });
                                        },
                                      text: ('Black Ferrari \t \t '),
                                      style: TextStyle(
                                          color: newColor,
                                          fontSize: 30,
                                          backgroundColor: Colors.black26,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          setState(() {
                                            AddContainer[0] = MyContainer[4];
                                            newColor = myColor[4];
                                          });
                                        },
                                      text: (' Red Ferrari  \t \t'),
                                      style: TextStyle(
                                          color: newColor,
                                          fontSize: 30,
                                          backgroundColor: Colors.grey,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          setState(() {
                                            AddContainer[0] = MyContainer[5];
                                            newColor = myColor[5];
                                          });
                                        },
                                      text: ('   White Ferrari'),
                                      style: TextStyle(
                                          color: newColor,
                                          backgroundColor: Colors.black26,
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
