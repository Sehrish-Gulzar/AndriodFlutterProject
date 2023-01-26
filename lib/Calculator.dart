import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(Calculator());
}

class Calculator extends StatefulWidget {
  const Calculator({Key key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var result;
  String msg = "";
  int v1;
  int v2;
  TextEditingController value1Controller = TextEditingController();
  TextEditingController value2Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Calculator")),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 400,
                child: Card(
                  elevation: 20,
                  shadowColor: Colors.blue,
                  child: TextField(
                    controller: value1Controller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.add, color: Colors.green),
                      prefixStyle: TextStyle(color: Colors.blue),
                      labelText: "VALUE 1",
                      hintText: "Enter Value 1:",
                    ),
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.number,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 400,
                child: Card(
                  elevation: 20,
                  shadowColor: Colors.blue,
                  child: TextField(
                    controller: value2Controller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.add, color: Colors.green),
                      prefixStyle: TextStyle(color: Colors.blue),
                      labelText: "VALUE 2",
                      hintText: "Enter Value 2:",
                    ),
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.number,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: ElevatedButton(
                          onPressed: () {
                            v1 = int.parse(value1Controller.text);
                            v2 = int.parse(value2Controller.text);
                            setState(() {
                              if (v1 == "" || v2 == "") {
                                msg = "Enter Value First";
                              } else {
                                result = v1 + v2;
                                // msg = "";
                              }
                            });
                          },
                          child: Text(" + ")),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: ElevatedButton(
                          onPressed: () {
                            v1 = int.parse(value1Controller.text);
                            v2 = int.parse(value2Controller.text);
                            setState(() {
                              if (v1 == "" || v2 == "") {
                                msg = "Enter Value First";
                              } else {
                                result = v1 - v2;
                                // msg = "";
                              }
                            });
                          },
                          child: Text(" - ")),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: ElevatedButton(
                          onPressed: () {
                            v1 = int.parse(value1Controller.text);
                            v2 = int.parse(value2Controller.text);
                            setState(() {
                              if (v1 == "" || v2 == "") {
                                msg = "Enter Value First";
                              } else {
                                result = v1 * v2;
                                // msg = "";
                              }
                            });
                          },
                          child: Text(" * ")),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: ElevatedButton(
                          onPressed: () {
                            v1 = int.parse(value1Controller.text);
                            v2 = int.parse(value2Controller.text);
                            setState(() {
                              if (v1 == "" || v2 == "") {
                                msg = "Enter Value First";
                              } else {
                                result = v1 / v2;
                                // msg = "";
                              }
                            });
                          },
                          child: Text(" / ")),
                    ),
                  ],
                ),
              ),
              Container(
                width: 300,
                height: 100,
                margin: EdgeInsets.all(30),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      text: ("Is Equal To:"),
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: ("\n\t\t    $result "),
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 8,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                width: 300,
                height: 100,
                margin: EdgeInsets.all(30),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      text: ("$msg"),
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
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
