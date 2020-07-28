import 'package:flutter/material.dart';

import 'package:first_app/animations/loader.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.blueAccent,
      body: new Center(
        child: new Loader()
      ),
    );
  }  
}