import 'package:flutter/material.dart';

void main() {
  runApp(ImageQuizApp());
}

class ImageQuizApp extends StatefulWidget {
  const ImageQuizApp({Key key}) : super(key: key);

  @override
  State<ImageQuizApp> createState() => _ImageQuizAppState();
}

class _ImageQuizAppState extends State<ImageQuizApp> {
  int counter = 0;
  int right = 0;
  int wrong = 0;
  List<Widget> myOptionButton() {
    List<Widget> myButtonList = [];

    for (int i = 0; i < imageOptions[counter]["options"].length; i++) {
      myButtonList.add(
        Container(
          margin: EdgeInsets.all(10),
          width: 200,
          height: 80,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shadowColor: Colors.blue,
              elevation: 10,
              primary: Colors.black,
              side: BorderSide(color: Colors.blueGrey, width: 5),
            ),
            onPressed: () {
              setState(() {
                if (imageOptions[counter]["options"][i]["isTrue"] == true) {
                  counter++;
                  right++;
                } else {
                  counter++;
                  wrong++;
                }
              });
            },
            child: Center(
              child: Text(
                "${imageOptions[counter]["options"][i]["option"]}",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    letterSpacing: 3,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      );
    }
    return myButtonList;
  }

  List imageOptions = [
    {
      "question": "What is this ?",
      "image": Container(
        margin: EdgeInsets.all(20),
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/cat 1.jpg"),
          ),
        ),
      ),
      "options": [
        {"option": "Cat", "isTrue": true},
        {"option": "Dog", "isTrue": false},
        {"option": "Horse", "isTrue": false},
      ]
    },
    {
      "question": "In this pic baby is with ? ?",
      "image": Container(
        margin: EdgeInsets.all(20),
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/babyLion.jpg"),
          ),
        ),
      ),
      "options": [
        {"option": "Cat", "isTrue": false},
        {"option": "Lion", "isTrue": true},
        {"option": "Wolf", "isTrue": false},
      ]
    },
    {
      "question": "What is this ?",
      "image": Container(
        margin: EdgeInsets.all(20),
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/horse 1.jpg"),
          ),
        ),
      ),
      "options": [
        {"option": "Cat", "isTrue": false},
        {"option": "Dog", "isTrue": false},
        {"option": "Horse", "isTrue": true},
      ]
    },
    // {
    //   "question": "Do you Love Chocolate Cake ?",
    //   "image": Container(
    //     margin: EdgeInsets.all(20),
    //     width: 300,
    //     height: 300,
    //     decoration: BoxDecoration(
    //       shape: BoxShape.circle,
    //       color: Colors.black,
    //       image: DecorationImage(
    //         fit: BoxFit.fill,
    //         image: AssetImage("assets/images/cake.jpg"),
    //       ),
    //     ),
    //   ),
    //   "options": [
    //     {"option": "YES", "isTrue": true},
    //     {"option": "No", "isTrue": true},
    //   ]
    // },
    {
      "question": "What is this ?",
      "image": Container(
        margin: EdgeInsets.all(20),
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/dog 1.jpg"),
          ),
        ),
      ),
      "options": [
        {"option": "Cat", "isTrue": false},
        {"option": "Dog", "isTrue": true},
        {"option": "Horse", "isTrue": false},
      ]
    },
    {
      "question": "What is this ?",
      "image": Container(
        margin: EdgeInsets.all(20),
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/Ferrari (4).jpg"),
          ),
        ),
      ),
      "options": [
        {"option": "Bus", "isTrue": false},
        {"option": "Car", "isTrue": true},
        {"option": "Bike", "isTrue": false},
      ]
    }
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Center(
              child: Text(
                "Image Quiz App",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    letterSpacing: 3,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),
            backgroundColor: Colors.black),
        body: (counter < imageOptions.length)
            ? SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(30),
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                            text: ("${imageOptions[counter]["question"]}"),
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black87,
                              offset: Offset(10, 20),
                              blurRadius: 10)
                        ],
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40),
                            bottomLeft: Radius.circular(40)),
                        border: Border.all(
                          width: 5,
                          color: Colors.black,
                        ),
                        color: Colors.blueGrey,
                      ),
                    ),
                    imageOptions[counter]["image"],
                    Container(
                      child: Column(
                        children: myOptionButton(),
                      ),
                    ),
                  ],
                ),
              )
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(20),
                      height: 200,
                      width: 400,
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                            text: ("YOUR SCORE:\n"),
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.indigo,
                              offset: Offset(10, 20),
                              blurRadius: 20)
                        ],
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40),
                            bottomLeft: Radius.circular(40)),
                        border: Border.all(
                          width: 10,
                          color: Colors.black87,
                        ),
                        color: Colors.white70,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      height: 50,
                      width: 300,
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                            text: ("RIGHT ANSWER: $right"),
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black87,
                              offset: Offset(10, 20),
                              blurRadius: 10)
                        ],
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40),
                            bottomLeft: Radius.circular(40)),
                        border: Border.all(
                          width: 5,
                          color: Colors.black,
                        ),
                        color: Colors.green,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 50,
                      width: 300,
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                            text: ("WRONG ANSWER: $wrong"),
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black87,
                              offset: Offset(10, 20),
                              blurRadius: 10)
                        ],
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40),
                            bottomLeft: Radius.circular(40)),
                        border: Border.all(
                          width: 5,
                          color: Colors.black,
                        ),
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
