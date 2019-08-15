import 'package:flutter/material.dart';
import 'package:some_function_practice/testbutton.dart';

class StatelessPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateless Practice"),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        color: Colors.black45,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            MyCard(
              title: Text("Child 1", style: TextStyle(fontSize: 25.0),), 
              icon: Icon(Icons.favorite, size: 40.0,)
            ),
            MyCard(
              title: Text("Child 2", style: TextStyle(fontSize: 25.0)), 
              icon: Icon(Icons.donut_large, size: 40.0)
            ),
            MyCard(
              title: Text("Child 3", style: TextStyle(fontSize: 25.0)), 
              icon: Icon(Icons.visibility, size: 40.0)
            ),
            TestButton()
          ],
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final Widget title;
  final Widget icon;

  MyCard({this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20.0),
      child: Card(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(5.0),
                child: this.title,
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: this.icon,
              )
            ],
          ),
        ) 
      ),
    );
  } 
}