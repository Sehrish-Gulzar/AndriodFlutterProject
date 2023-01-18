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
      home: MyHomePage(title: "My Pictures"),
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
      width: 400,
      height: 400,
      child: Text(
        "",
        style: TextStyle(color: Colors.white70, fontSize: 20),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/images/pic (1).jpg"),
        ),
      ),
    ),
    Container(
      width: 400,
      height: 400,
      child: Text(
        "“The darker the night, the brighter the stars, ..",
        style: TextStyle(color: Colors.yellow, fontSize: 20),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/images/pic (2).jpg"),
        ),
      ),
    ),
    Container(
      width: 400,
      height: 400,
      child: Text(
        "Shine like diamond",
        style: TextStyle(color: Colors.white70, fontSize: 20),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/images/pic (3).jpg"),
        ),
      ),
    ),
    Container(
      width: 400,
      height: 400,
      child: Text(
        "",
        style: TextStyle(color: Colors.white70, fontSize: 20),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/images/pic (4).jpg"),
        ),
      ),
    ),
    Container(
      width: 400,
      height: 400,
      child: Text(
        "",
        style: TextStyle(color: Colors.white70, fontSize: 20),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/images/pic (5).jpg"),
        ),
      ),
    ),
    Container(
      width: 400,
      height: 400,
      child: Text(
        "",
        style: TextStyle(color: Colors.white70, fontSize: 20),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/images/pic (6).jpg"),
        ),
      ),
    ),
    Container(
      width: 400,
      height: 400,
      child: Text(
        "",
        style: TextStyle(color: Colors.white70, fontSize: 20),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/images/pic (7).jpg"),
        ),
      ),
    ),
    Container(
      width: 400,
      height: 400,
      child: Text(
        "",
        style: TextStyle(color: Colors.white70, fontSize: 20),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/images/pic (8).jpg"),
        ),
      ),
    ),
  ];
  List<Widget> AddContainer = [
    Container(
      width: 400,
      height: 400,
      child: Text(
        "",
        style: TextStyle(color: Colors.white70, fontSize: 20),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/images/pic (1).jpg"),
        ),
      ),
    ),
  ];
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter == 10) {
        _counter = 0;
      } else {
        AddContainer.add(MyContainer[_counter]);
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
            AddContainer[_counter],
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
