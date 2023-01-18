import 'package:flutter/material.dart';

void main() {
  runApp(HorizontialView());
}

class HorizontialView extends StatefulWidget {
  const HorizontialView({Key key}) : super(key: key);

  @override
  State<HorizontialView> createState() => _HorizontialViewState();
}

class _HorizontialViewState extends State<HorizontialView> {
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text("Horizontal Scroll View"))),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: MyContainer,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: MyContainer,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
