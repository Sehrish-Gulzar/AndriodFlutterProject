import 'package:firstproject/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyStateFullWidget extends StatefulWidget {
  // const MyStateFullWidget({Key? key}) : super(key: key);

  @override
  State<MyStateFullWidget> createState() => _MyStateFullWidgetState();
}

class _MyStateFullWidgetState extends State<MyStateFullWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant MyStateFullWidget oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
