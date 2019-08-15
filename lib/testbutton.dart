import 'package:flutter/material.dart';

class TestButton extends StatefulWidget {
  final String menuName;
  final Color menuColor;
  final int menuFlex;

  TestButton({this.menuName, this.menuColor, this.menuFlex});

  TestButtonState createState() => TestButtonState();
}

class TestButtonState extends State<TestButton> {
  Widget build(BuildContext context) {
    return Container(
      color: widget.menuColor,
      child: Expanded(flex: widget.menuFlex, child: Text("tes")),
    );
  }
}
