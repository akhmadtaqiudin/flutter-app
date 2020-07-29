import 'package:flutter/material.dart';
import 'first/firstPage.dart' as first;
import 'second/secondPage.dart' as second;
import 'third/thirdPage.dart' as third;

class MyTabs extends StatefulWidget {
  @override
  MyTabsState createState() => new MyTabsState();
}

class MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState(){
    super.initState();
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Pages"), backgroundColor: Colors.teal,
//      bottom: new TabBar(
//        controller: controller,
//        tabs: <Tab>[
//          new Tab(icon: new Icon(Icons.arrow_forward)),
//          new Tab(icon: new Icon(Icons.arrow_downward)),
//          new Tab(icon: new Icon(Icons.arrow_back))
//        ])
      ),

      bottomNavigationBar: new Material(
        color: Colors.teal,
        child: new TabBar(
          controller: controller,
          tabs: <Tab>[
            new Tab(icon: new Icon(Icons.arrow_forward)),
            new Tab(icon: new Icon(Icons.arrow_downward)),
            new Tab(icon: new Icon(Icons.arrow_back))
          ]
        )
      ),

      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new first.First(),
          new second.Second(),
          new third.Third()
        ]
      )
    );
  }  
}