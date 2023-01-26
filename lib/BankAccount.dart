import 'package:flutter/material.dart';

void main() {
  runApp(MyBank());
}

class MyBank extends StatefulWidget {
  const MyBank({Key key}) : super(key: key);

  @override
  State<MyBank> createState() => _MyBankState();
}

class _MyBankState extends State<MyBank> {
  TextEditingController depositController = TextEditingController();
  TextEditingController withdrawController = TextEditingController();
  String msg = "";
  List<Widget> field = [
    Container(
      width: 400,
      height: 100,
      margin: EdgeInsets.all(30),
      child: Center(
        child: RichText(
          text: TextSpan(
            text: (""),
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
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
  ];

  int balance = 0;

  void Deposit() {
    setState(() {
      msg = "";
      field[0] = Container(
        child: Column(
          children: [
            Container(
              width: 400,
              child: Card(
                elevation: 20,
                shadowColor: Colors.blue,
                child: TextField(
                  controller: depositController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.add, color: Colors.indigo),
                    prefixStyle: TextStyle(color: Colors.black),
                    labelText: "Deposit",
                    hintText: "Enter Your Amount",
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.blue,
                      elevation: 10,
                      primary: Colors.black,
                      side: BorderSide(color: Colors.blueGrey, width: 5),
                    ),
                    onPressed: () {
                      setState(() {
                        int deposit = int.parse(depositController.text);

                        balance = (balance + deposit);
                      });
                    },
                    child: Text(" Deposit ")),
              ),
            ),
          ],
        ),
      );
    });
  }

  void ShowBalance() {
    setState(() {
      msg = "";
      field[0] = Container(
        width: 400,
        height: 100,
        margin: EdgeInsets.all(30),
        child: Center(
          child: RichText(
            text: TextSpan(
              text: ("$balance"),
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        decoration: BoxDecoration(
          border: Border.all(
            width: 8,
            color: Colors.black,
          ),
        ),
      );
    });
  }

  void Withdraw() {
    setState(() {
      msg = "";
      field[0] = Container(
        child: Column(
          children: [
            Container(
              width: 400,
              child: Card(
                elevation: 20,
                shadowColor: Colors.blue,
                child: TextField(
                  controller: withdrawController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.add, color: Colors.indigo),
                    prefixStyle: TextStyle(color: Colors.black),
                    labelText: "Withdraw",
                    hintText: "Enter Your Amount",
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.blue,
                      elevation: 10,
                      primary: Colors.black,
                      side: BorderSide(color: Colors.blueGrey, width: 5),
                    ),
                    onPressed: () {
                      setState(() {
                        int withdraw = int.parse(withdrawController.text);
                        if (balance >= withdraw) {
                          balance = (balance - withdraw);
                        } else {
                          msg =
                              "Insufficient Balance Please Recharge Your Account!";
                        }
                      });
                    },
                    child: Text(" Withdraw ")),
              ),
            ),
          ],
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Center(
              child: Text(
                "BANK ACCOUNT",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    letterSpacing: 3,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),
            backgroundColor: Colors.black),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Column(
                  children: <Widget>[
                    field[0],
                  ],
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
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.blue,
                            elevation: 10,
                            primary: Colors.black,
                            side: BorderSide(color: Colors.blueGrey, width: 5),
                          ),
                          onPressed: ShowBalance,
                          child: Text(" Show Balance ")),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.blue,
                            elevation: 10,
                            primary: Colors.black,
                            side: BorderSide(color: Colors.blueGrey, width: 5),
                          ),
                          onPressed: Deposit,
                          child: Text(" Deposit ")),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.blue,
                            elevation: 10,
                            primary: Colors.black,
                            side: BorderSide(color: Colors.blueGrey, width: 5),
                          ),
                          onPressed: Withdraw,
                          child: Text(" Withdraw ")),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(30),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      text: ("$msg"),
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
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
