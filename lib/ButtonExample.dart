import 'package:flutter/material.dart';

void main() {
  runApp(Button());
}

class Button extends StatelessWidget {
  void printMessage() {
    print("Button press from printMessage method");
  }

  void LongPress() {
    print("Button long press from LongPress method");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Button Example",
      home: Center(
        child: ElevatedButton(
            onPressed: printMessage,
            onLongPress: LongPress,
            child: Text("Click Me")),
      ),
    );
  }
}
