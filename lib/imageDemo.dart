import 'package:flutter/material.dart';

void main() {
  runApp(Mypics());
}

class Mypics extends StatefulWidget {
  const Mypics({Key key}) : super(key: key);

  @override
  State<Mypics> createState() => _MypicsState();
}

class _MypicsState extends State<Mypics> {
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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: MyContainer,
          ),
        ),
      ),
    );
  }
}
