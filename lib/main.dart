import 'package:flutter/material.dart';

// import 'package:some_function_practice/hello_world/hello_world.dart';
// import 'package:some_function_practice/home_screen.dart';
// import 'package:some_function_practice/http_request/http_request.dart';
// import 'package:some_function_practice/navigation/navigation.dart';
// import 'package:some_function_practice/stateful_widget/stateful_widget.dart';
// import 'package:some_function_practice/stateless_widget/stateless_widget.dart';
// import 'package:some_function_practice/tab_bar_navigation/collection.dart';
// import 'package:some_function_practice/text_input/text_input.dart';
import 'package:some_function_practice/route_generator.dart';

void main() {
  runApp(MaterialApp(
    // debugShowCheckedModeBanner: false,
    title: "Flutter Practice",
    initialRoute: "/",
    onGenerateRoute: RouteGenerator.generateRoute,
    // routes: <String, WidgetBuilder> {
    //   "/": (BuildContext context) => HomeScreen(),
    //   "/helloWorld": (BuildContext context) => new HelloWorld(),
    //   "/stateless": (BuildContext context) => new StatelessPractice(), // Includes Cards Example
    //   "/statefull": (BuildContext context) => new MyStatefulWidget(), // Include Button Example
    //   "/navigate": (BuildContext context) => new MyNavigation(),
    //   "/navigate2": (BuildContext context) => new MyNavigationSecond(),
    //   "/textInput": (BuildContext context) => new MyTextInput(),
    //   "/tabs": (BuildContext context) => new MyTabs(),
    //   "/httpRequest": (BuildContext context) => new HttpRequest(),
    // }
  ));
}