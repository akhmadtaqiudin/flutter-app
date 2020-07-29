import 'package:flutter/material.dart';

final colorBackground = const Color(0xFFF3F4F7);
final colorPrimary = const Color(0xFF35465B);
final colorAccent = const Color(0xFF7576FD);
final colorGrey = const Color(0xFFA5ADB7);

class ScreenBackground extends StatelessWidget {
  final Widget child;
  ScreenBackground({@required this.child});

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: colorBackground,
      child: new DefaultTextStyle(
        style: new TextStyle(
          color: colorPrimary,
          fontFamily: 'Roboto',
          fontSize: 16.0,
        ),
        child: child,
      ),
    );
  }
}

class OtherScreen extends StatelessWidget {
  final String name;
  OtherScreen(this.name);

  @override
  Widget build(BuildContext context) {
    return new ScreenBackground(
      child: new Center(
        child: new Text(this.name, style: Theme
            .of(context)
            .textTheme
            .display3),
      ),
    );
  }
}