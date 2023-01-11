import 'package:flutter/material.dart';

void main() {
  runApp(MynewWidget("My new widget"));
}

class MynewWidget extends StatelessWidget {
  String message;
  MynewWidget(this.message);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        width: 20,
        height: 40,
        child: Center(
          child: Text(
            "$message",
            style: TextStyle(color: Colors.tealAccent, fontSize: 30),
          ),
        ),
      ),
    );
  }
}
