import 'package:flutter/material.dart';

void main() {
  runApp(InputQuizApp());
}

class InputQuizApp extends StatefulWidget {
  const InputQuizApp({Key key}) : super(key: key);

  @override
  State<InputQuizApp> createState() => _InputQuizAppState();
}

class _InputQuizAppState extends State<InputQuizApp> {
  List<Widget> addOption = [];
  List values = [];
  String question;
  String option;

  TextEditingController quesController = TextEditingController();
  TextEditingController optionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Input Q/A")),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(30),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      text: ("Enter question"),
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Container(
                width: 400,
                child: Card(
                  elevation: 20,
                  shadowColor: Colors.blue,
                  child: TextField(
                    controller: quesController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.add, color: Colors.green),
                      prefixStyle: TextStyle(color: Colors.blue),
                      labelText: "QUESTION",
                      hintText: "Enter Your Question",
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Container(
                width: 200,
                child: Card(
                  elevation: 20,
                  shadowColor: Colors.blue,
                  child: TextField(
                    controller: optionController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.add, color: Colors.green),
                      prefixStyle: TextStyle(color: Colors.blue),
                      labelText: "Option",
                      hintText: "Enter Your Option",
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Container(
                width: 200,
                child: Card(
                  elevation: 20,
                  shadowColor: Colors.blue,
                  child: TextField(
                    controller: optionController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.add, color: Colors.green),
                      prefixStyle: TextStyle(color: Colors.blue),
                      labelText: "Option",
                      hintText: "Enter Your Option",
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: addOption,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      addOption.add(
                        Container(
                          width: 200,
                          child: Card(
                            elevation: 20,
                            shadowColor: Colors.blue,
                            child: TextField(
                              controller: optionController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                prefixIcon:
                                    Icon(Icons.add, color: Colors.green),
                                prefixStyle: TextStyle(color: Colors.blue),
                                labelText: "Option",
                                hintText: "Enter Your Option",
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ),
                      );
                    });
                  },
                  child: Text("Add option")),
              Container(
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        question = quesController.text;
                        option = optionController.text;

                        values.add(question);
                        values.add(option);
                      });
                    },
                    child: Text("Submit")),
              ),
              Container(
                child: RichText(
                  text: TextSpan(
                    text: ("$values"),
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
