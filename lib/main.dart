import 'package:flutter/material.dart';
import 'package:todo/pages/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor: Colors.redAccent,
      ),
      title: 'Task App Provider',
      home: HomePage(),
    );
  }
}

//https://www.youtube.com/watch?v=WMO9juMEXxU
