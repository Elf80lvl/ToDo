import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/data.dart';
//import 'package:todo/pages/homepage.dart';
//import 'library.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String data = 'Top Data 555';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      create: (context) => Data(),
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.red,
          accentColor: Colors.redAccent,
        ),
        title: 'Task App Provider',
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Text(context.watch<Data>().getData),
        ),
      ),
      body: Center(
        child: Widget1(),
      ),
    );
  }
}

class Widget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Widget2(),
    );
  }
}

class Widget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          MyTextField(),
          Widget3(),
        ],
      ),
    );
  }
}

class Widget3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(context.watch<Data>().getData),
    );
  }
}

class MyTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      //старый синтаксис:
      // onChanged: (newData) =>
      //Provider.of<Data>(context, listen: false).changeString(newData),
      onChanged: (newData) => {
        context.read<Data>().changeString(newData),
      },
    );
  }
}

//https://www.youtube.com/watch?v=WMO9juMEXxU
