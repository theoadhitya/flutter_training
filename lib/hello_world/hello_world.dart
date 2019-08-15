import 'package:flutter/material.dart';
import 'package:some_function_practice/hello_world/UI/services_bar.dart';
import 'package:some_function_practice/hello_world/UI/user_bar.dart';

class HelloWorld extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("trabeloka"),
      ),
      body: Column(
        children: <Widget>[
          UserBar(),
          Divider(),
          Servicebar(),
          Container(),
          Container(),
          Container()
        ],
      )
    );
  }
}