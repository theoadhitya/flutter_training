import 'package:flutter/material.dart';
import 'package:some_function_practice/hello_world/hello_world.dart';
import 'package:some_function_practice/home_screen.dart';
import 'package:some_function_practice/http_request/http_request.dart';
import 'package:some_function_practice/navigation/navigation.dart';
import 'package:some_function_practice/stateful_widget/stateful_widget.dart';
import 'package:some_function_practice/stateless_widget/stateless_widget.dart';
import 'package:some_function_practice/tab_bar_navigation/collection.dart';
import 'package:some_function_practice/text_input/text_input.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in
    // final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (BuildContext context) => HomeScreen());
      case '/helloWorld':
        return MaterialPageRoute(builder: (_) => HelloWorld());
      case '/stateless':  
        return MaterialPageRoute(builder: (_) => StatelessPractice());
      case '/statefull':
        return MaterialPageRoute(builder: (_) => MyStatefulWidget());
      case '/navigate':
        return MaterialPageRoute(builder: (_) => MyNavigation());
      case '/navigate2':
        return MaterialPageRoute(builder: (_) => MyNavigationSecond());
      case '/textInput':
        return MaterialPageRoute(builder: (_) => MyTextInput());
      case '/tabs':
        return MaterialPageRoute(builder: (_) => MyTabs());
      case '/httpRequest':
        return MaterialPageRoute(builder: (_) => HttpRequest());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text('Error'),),
        body: Center(
          child: Text('Error'),
        ),
      );
    });
  }
}
