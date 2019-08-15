import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidgetState createState() => MyStatefulWidgetState();
}

class MyStatefulWidgetState extends State<MyStatefulWidget> {

  int counter = 0;
  List<String> strings = ["String 1", "String 2", "String 3"];
  String displayedString = "";

  void onPressed() {
    setState(() {
      this.displayedString = this.strings[this.counter];
      this.counter = this.counter < 2 ? this.counter + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Widget Practice"),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  this.displayedString,
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                )
              ),
              RaisedButton(
                child: Text(
                  "Press me",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0
                  ),
                ),
                padding: EdgeInsets.all(15.0),
                color: Colors.red,
                onPressed: onPressed,
              )
            ],
          ),
        ),
      ),
    );
  }
}