import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final String _text;
  final Color _color;
  final int _flex;
  final VoidCallback _onPressed;

  MenuButton(this._text, this._color, this._flex, this._onPressed);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: _flex,
        child: Material(
          color: _color,
          child: InkWell(
            onTap: () => _onPressed(),
            child: Center(
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  _text,
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ));
  }
}
