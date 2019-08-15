import 'package:flutter/material.dart';

class UserBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.person, size: 35.0,),
          Padding(padding: EdgeInsets.symmetric(horizontal: 7.0)),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Theo Adhitya', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0),),
                SizedBox(height: 7.0,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0), color: Color(0xfff0f0f0)),
                      child: Text('80 Points', style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w700),),
                    ),
                    SizedBox(width: 13.0,),
                    Container(
                      padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0), color: Color(0xfff0f0f0)),
                      child: Text('Payment', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 13.0),),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}