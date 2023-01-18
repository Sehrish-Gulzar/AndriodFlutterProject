import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(UserInputDemo());
}

class UserInputDemo extends StatefulWidget {
  const UserInputDemo({Key key}) : super(key: key);

  @override
  State<UserInputDemo> createState() => _UserInputDemoState();
}

class _UserInputDemoState extends State<UserInputDemo> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Employees Information")),
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
                    controller: email,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person, color: Colors.green),
                      prefixStyle: TextStyle(color: Colors.blue),
                      labelText: "Name",
                      hintText: "Enter Your Name",
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
                    obscureText: true,
                    controller: password,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.vpn_key, color: Colors.green),
                      prefixStyle: TextStyle(color: Colors.blue),
                      labelText: "Password",
                      hintText: "Enter Your Password",
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
                width: 400,
                child: ElevatedButton(
                  onPressed: () {
                    String name = email.text;
                    String pass = password.text;
                    print("Name: $name\nPassword: $pass");
                  },
                  child: Center(child: Text("Submit")),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
