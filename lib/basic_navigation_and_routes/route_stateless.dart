import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Home Page"), backgroundColor: Colors.cyan[300]),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(
                icon: new Icon(Icons.android, color: Colors.green[300]),
                iconSize: 70.0, 
                onPressed: () {Navigator.of(context).pushNamed("/SecondPage");}
              ),
              new Text("Home")
            ],
          ),
        ),
      ),
    );
  }  
}

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Second Page"), backgroundColor: Colors.cyan[300]),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(
                icon: new Icon(Icons.home, color: Colors.green[300]),
                iconSize: 70.0, 
                onPressed: null
              ),
              new Text("Second Page")
            ],
          ),
        ),
      ),
    );
  }
  
}