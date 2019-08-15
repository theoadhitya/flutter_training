import 'package:flutter/material.dart';
import 'package:some_function_practice/menu_button.dart';

class HomeScreen extends StatelessWidget {

  void handlePressed(int screenNumber, BuildContext context) {
    switch (screenNumber) {
      case 0: 
        Navigator.of(context).pushNamed("/");
        break;
      case 1: 
        Navigator.of(context).pushNamed("/helloWorld");
        break;
      case 2: 
        Navigator.of(context).pushNamed("/stateless");
        break;
      case 3: 
        Navigator.of(context).pushNamed("/statefull");
        break;
      case 4: 
        Navigator.of(context).pushNamed("/navigate");
        break;
      case 5: 
        Navigator.of(context).pushNamed("/textInput");
        break;
      case 6: 
        Navigator.of(context).pushNamed("/tabs");
        break;
      case 7: 
        Navigator.of(context).pushNamed("/httpRequest");
        break;
      
      default: Navigator.of(context).pushNamed("/");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"),),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  MenuButton("Home", Colors.amber, 1, () => this.handlePressed(0, context)),
                  MenuButton("Hello World", Colors.black54, 2, () => this.handlePressed(1, context)),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  MenuButton("Stateless", Colors.deepOrange, 2, () => this.handlePressed(2, context)),
                  MenuButton("Stateful", Colors.deepPurple, 2, () => this.handlePressed(3, context)),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  MenuButton("Navigate", Colors.blueAccent, 2, () => this.handlePressed(4, context)),
                  MenuButton("Text Input", Colors.purpleAccent, 3, () => this.handlePressed(5, context)),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  MenuButton("Http Request", Colors.pink, 3, () => this.handlePressed(7, context)),
                  MenuButton("Tabs", Colors.brown, 2, () => this.handlePressed(6, context)),
                ],
              ),
            ),
          ],  
        )
      ),
    );
  }
}