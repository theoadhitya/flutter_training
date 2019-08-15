import 'package:flutter/material.dart';
import 'package:some_function_practice/tab_bar_navigation/first_page.dart';
import 'package:some_function_practice/tab_bar_navigation/second_page.dart';
import 'package:some_function_practice/tab_bar_navigation/third_page.dart';

class MyTabs extends StatefulWidget {
  @override
  MyTabsState createState() => new MyTabsState();
}

class MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {

  TabController controller;

  @override
  void initState() {
    super.initState();
    this.controller = new TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pages"),
        backgroundColor: Colors.deepOrange,
        bottom: TabBar(
          unselectedLabelColor: Colors.orange,
          labelColor: Colors.black87,
          indicatorColor: Colors.black38,
          indicatorWeight: 4.0,
          controller: this.controller,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.arrow_forward),),
            Tab(icon: Icon(Icons.arrow_downward),),
            Tab(icon: Icon(Icons.arrow_back),)
          ],
        ),
      ),
      body: TabBarView(
        controller: this.controller,
        children: <Widget>[
          First(),
          Second(),
          Third()
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.purpleAccent,
        child: TabBar(
          controller: this.controller,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.arrow_forward),),
            Tab(icon: Icon(Icons.arrow_downward),),
            Tab(icon: Icon(Icons.arrow_back),)
          ],
        ),
      ),
    );
  }
}