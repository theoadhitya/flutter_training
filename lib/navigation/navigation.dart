import 'package:flutter/material.dart';

class MyNavigation extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation 1", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.favorite, color: Colors.redAccent,),
                iconSize: 50.0,
                onPressed: () {Navigator.of(context).pushNamed("/navigate2");},
              ),
              Text("First Page")
            ],
          ),
        ),
      ),
    );
  }
}

class MyNavigationSecond extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation 2", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home, color: Colors.redAccent,),
                iconSize: 50.0,
                onPressed: null,
              ),
              Text("Second Page")
            ],
          ),
        ),
      ),
    );
  }
}