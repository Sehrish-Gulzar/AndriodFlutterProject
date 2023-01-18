import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(UserInputDemo());
}

class UserInputDemo extends StatefulWidget {
  const UserInputDemo({Key key}) : super(key: key);

  @override
  State<UserInputDemo> createState() => _UserInputDemoState();
}

class _UserInputDemoState extends State<UserInputDemo> {
  Color myColor = Colors.green;
  String wrong = "";
  List<Widget> CatsList = [
    Container(
      margin: EdgeInsets.all(20),
      width: 400,
      height: 400,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/cat 1.jpg"),
        ),
      ),
    ),
    Container(
      margin: EdgeInsets.all(20),
      width: 400,
      height: 400,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/cat 2.jpg"),
        ),
      ),
    ),
    Container(
      margin: EdgeInsets.all(20),
      width: 400,
      height: 400,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/cat 3.jpg"),
        ),
      ),
    ),
    Container(
      margin: EdgeInsets.all(20),
      width: 400,
      height: 400,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/cat 4.jpg"),
        ),
      ),
    ),
    Container(
      margin: EdgeInsets.all(20),
      width: 400,
      height: 400,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/cat 5.jpg"),
        ),
      ),
    ),
  ];
  List<Widget> HorseList = [
    Container(
      margin: EdgeInsets.all(20),
      width: 400,
      height: 400,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/horse 1.jpg"),
        ),
      ),
    ),
    Container(
      margin: EdgeInsets.all(20),
      width: 400,
      height: 400,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/horse 2.jpg"),
        ),
      ),
    ),
    Container(
      margin: EdgeInsets.all(20),
      width: 400,
      height: 400,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/horse 3.jpg"),
        ),
      ),
    ),
    Container(
      margin: EdgeInsets.all(20),
      width: 400,
      height: 400,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/horse 4.jpg"),
        ),
      ),
    ),
    Container(
      margin: EdgeInsets.all(20),
      width: 400,
      height: 400,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/horse 5.jpg"),
        ),
      ),
    ),
  ];
  List<Widget> DogList = [
    Container(
      margin: EdgeInsets.all(20),
      width: 400,
      height: 400,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/dog 1.jpg"),
        ),
      ),
    ),
    Container(
      margin: EdgeInsets.all(20),
      width: 400,
      height: 400,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/dog 2.jpg"),
        ),
      ),
    ),
    Container(
      margin: EdgeInsets.all(20),
      width: 400,
      height: 400,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/dog 3.jpg"),
        ),
      ),
    ),
    Container(
      margin: EdgeInsets.all(20),
      width: 400,
      height: 400,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/dog 4.jpg"),
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
          image: AssetImage("assets/images/dog 5.jpg"),
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
          "\tIf you want to see image\n           search bellow  ",
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

  TextEditingController SearchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Search Images")),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: <Widget>[
                  AddContainer[0],
                  Container(
                    width: 400,
                    child: Card(
                      elevation: 20,
                      shadowColor: Colors.blue,
                      child: TextField(
                        controller: SearchController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.search, color: Colors.green),
                          prefixStyle: TextStyle(color: Colors.blue),
                          labelText: "Search",
                          hintText: "Enter Your Search Text",
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        String Search = SearchController.text;
                        setState(() {
                          int random = Random().nextInt(CatsList.length);
                          if (Search == "cats" ||
                              Search == "cat" ||
                              Search == "Cats" ||
                              Search == "Cat" ||
                              Search == "CAT" ||
                              Search == "CATS") {
                            AddContainer[0] = CatsList[random];
                            myColor = Colors.green;
                            wrong = "Image found!";
                          } else if (Search == 'dog' ||
                              Search == 'dogs' ||
                              Search == 'Dog' ||
                              Search == 'Dogs' ||
                              Search == 'DOG' ||
                              Search == 'DOGS') {
                            AddContainer[0] = DogList[random];
                            myColor = Colors.green;
                            wrong = "Image found!";
                          } else if (Search == 'horse' ||
                              Search == 'horses' ||
                              Search == 'Horse' ||
                              Search == 'Horses' ||
                              Search == 'HORSE' ||
                              Search == 'HORSES') {
                            AddContainer[0] = HorseList[random];
                            myColor = Colors.green;
                            wrong = "Image found!";
                          } else {
                            myColor = Colors.red;
                            wrong =
                                "Sorry! No Image Found\nSearch From These Categories:\n  1.Cats\n  2.Dogs\n  3.Horses";
                          }
                        });
                        ;
                      },
                      child: Center(child: Text("Search")),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: RichText(
                      text: TextSpan(
                        text: (wrong),
                        style: TextStyle(
                            color: myColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
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
