import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {

  List data;

  Future<String> getData() async{
    var response = await http.get(
      Uri.encodeFull("localhost:8080/api/post"),
      headers: {"Accept":"application/json"}
    );

    this.setState(() {
      data = jsonDecode(response.body);
    });

    print(data[1]["title"]);
    return "Success";
  }

  @override
  void initState(){
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("List data"), backgroundColor: Colors.tealAccent),
      body: new ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index){
          return new Card(
            child: new Text(data[index]["title"]),
          );
        })
    );
  }
}