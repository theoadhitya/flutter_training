import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class HttpRequest extends StatefulWidget {
  HttpRequestState createState() => new HttpRequestState();
}

class HttpRequestState extends State<HttpRequest> {

  List data;

  Future<String> getData() async {
    String url = "https://jsonplaceholder.typicode.com/posts";
    http.Response response = await http.get(
      Uri.encodeFull(url),
      headers: {
        // "key": "YOUR_KEY_HERE"
        "Accept": "application/json"
      }
    );

    this.setState(() {
      data = json.decode(response.body);
    });

    return "Success !";
  }

  @override
  void initState() {
    super.initState();
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Http Request Pract"),),
      body: ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Text(data[index]["title"]),
          );
        },
      )
    );
  }

}