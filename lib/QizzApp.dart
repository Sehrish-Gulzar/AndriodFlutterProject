import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatefulWidget {
  const QuizApp({Key key}) : super(key: key);

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  int counter = 0;
  int right = 0;
  int wrong = 0;
  List ques = [
    {
      "question": " What color does yellow and green make?",
      "options": [
        {"option": "lime", "isTrue": true},
        {"option": "ocean mist", "isTrue": false},
        {"option": "maroon", "isTrue": false},
        {"option": "tangerine", "isTrue": false}
      ]
    },
    {
      "question": " MS-Word is an example of _____",
      "options": [
        {"option": "an operating system", "isTrue": false},
        {"option": "a processing device", "isTrue": false},
        {"option": "application software", "isTrue": true},
        {"option": "an input device", "isTrue": false}
      ]
    },
    {
      "question": "Ctrl, Shift and Alt are called .......... keys",
      "options": [
        {"option": "modifier", "isTrue": true},
        {"option": "function", "isTrue": false},
        {"option": "alphanumeric", "isTrue": false},
        {"option": "adjustment", "isTrue": false}
      ]
    },
    {
      "question": "Do Sehrish Love Pasta ",
      "options": [
        {"option": "YES", "isTrue": true},
        {"option": "NO", "isTrue": false}
      ]
    },
    {
      "question": "A computer cannot 'boot' if it does not have the _____",
      "options": [
        {"option": "compiler", "isTrue": false},
        {"option": "loader", "isTrue": false},
        {"option": "operating system", "isTrue": true},
        {"option": " assembler", "isTrue": false}
      ]
    },
    {
      "question": "The purest form of iron is ",
      "options": [
        {"option": "wrought iron", "isTrue": true},
        {"option": "steel", "isTrue": false},
        {"option": "pig iron", "isTrue": false},
        {"option": "nickel steel", "isTrue": false}
      ]
    }
  ];

  List<Widget> myOptionButton() {
    List<Widget> myButtonList = [];

    for (int i = 0; i < ques[counter]["options"].length; i++) {
      myButtonList.add(
        Container(
          margin: EdgeInsets.all(10),
          width: 400,
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
                if (ques[counter]["options"][i]["isTrue"] == true) {
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
                "${ques[counter]["options"][i]["option"]}",
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Center(
              child: Text(
                "Quiz App",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    letterSpacing: 3,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),
            backgroundColor: Colors.black),
        body: (counter < ques.length)
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.all(30),
                      height: 200,
                      width: 400,
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                            text: ("${ques[counter]["question"]}"),
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
