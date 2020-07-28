import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  Future<String> getData() async{
    http.Response response = await http.get(
      Uri.encodeFull("localhost:8080/api/post"),
      headers: {"Accept": "application/json"}
    );

    List data = jsonDecode(response.body);
    print(data[1]["title"]);
  }
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Http Request"), backgroundColor: Colors.tealAccent),
      body: new Center(
        child: new RaisedButton(
          child: new Text("Get data!", style: new TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 20.0)),
          onPressed: getData
        )
      )
    );
  }  
}