import 'package:flutter/material.dart';

import 'package:first_app/horizontal_listview_and_tabs/homeScreen.dart';
import 'package:first_app/horizontal_listview_and_tabs/screenBackground.dart';


class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => new MyAppState();
}

class MyAppState extends State<MyApp> {
  final _navigatorKey = new GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      color: Colors.blueAccent,
      debugShowCheckedModeBanner: false,
      title: 'Feature Test App',
      theme: new ThemeData(
        brightness: Brightness.light,
        backgroundColor: colorBackground,
        primaryColor: colorPrimary,
        accentColor: colorAccent,
        splashColor: colorAccent,
        disabledColor: colorGrey,
      ),
      home: new Column(
        children: <Widget>[
          new Expanded(
            child: new Navigator(
              key: _navigatorKey,
              onGenerateRoute: _onGenerateRoute,
            ),
          ),
          new BottomNav(navCallback: (String namedRoute) {
            print("Navigating to $namedRoute");
            _navigatorKey.currentState.pushReplacementNamed(namedRoute);
          }),
        ],
      ),
    );
  }

  Route<dynamic> _onGenerateRoute(RouteSettings settings) {
    Widget child;
    if (settings.name == '/') {
      child = new HomeScreen();
    }
    else if (settings.name == '/search') {
      child = new OtherScreen('Search');
    }
    else if (settings.name == '/stats') {
      child = new OtherScreen('Statistics');
    }
    else if (settings.name == '/messages') {
      child = new OtherScreen('Messages');
    }
    else if (settings.name == '/more') {
      child = new OtherScreen('More');
    }
    if (child != null) {
      return new MaterialPageRoute(builder: (c) => child);
    }
    return null;
  }
}