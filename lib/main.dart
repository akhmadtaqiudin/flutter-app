import 'package:flutter/material.dart';
// import 'button/button.dart';
// import 'basic_navigation_and_routes/route_statefull.dart';
// import 'basic_navigation_and_routes/route_stateless.dart';
import 'onchanged/onchanged.dart';

void main(){
  runApp(new MaterialApp(
    // home: new MyHome()
    // home: new AwesomeButton()
    // home: new HomePage(),
    // routes: <String, WidgetBuilder>{
    //   "/SecondPage": (BuildContext context) => new SecondPage()
    // },
    home: new MyTextInput()
  ));
}

class MyHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Hello Flutter")),
      body: new Container(
        padding: new EdgeInsets.all(20.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new MyCard(
              title: new Text("Fulu hahaha", style: new TextStyle(fontSize: 20.0)),
              icon: new Icon(Icons.favorite, size: 40.0, color: Colors.redAccent)
            ),
            new MyCard(
              title: new Text("Laptop", style: new TextStyle(fontSize: 20.0)),
              icon: new Icon(Icons.laptop_chromebook, size: 40.0, color: Colors.teal[200])
            ),
            new MyCard(
              title: new Text("data", style: new TextStyle(fontSize: 20.0)),
              icon: new Icon(Icons.local_dining, size: 40.0, color: Colors.blue[100])
            )
          ],
        ),
      ),
    );
  }  
}

class MyCard extends StatelessWidget{
  MyCard({this.title, this.icon });

  final Widget title;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.only(bottom: 20.0),
      child: new Card(
        child: new Container(
          padding: new EdgeInsets.all(15.0),
          child: new Column(
            children: <Widget>[this.title, this.icon],
          ),
        ),
      ),
    );
  }
  
}