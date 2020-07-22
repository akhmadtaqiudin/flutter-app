import 'package:flutter/material.dart';

class MyTextInput extends StatefulWidget{
  @override
  MyTextInputState createState() => MyTextInputState();
}

class MyTextInputState extends State<MyTextInput>{
  String result = "";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Input Text"), backgroundColor: Colors.deepOrange),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new TextField(
                decoration: new InputDecoration(hintText: "Input disini"),
                onChanged: (String str){
                  setState(() {
                    result = str;
                  });
                }
              ),
              new Text(result)
            ],
          ),
        ),
      ),
    );
  }  
}