import 'package:flutter/material.dart';
import 'package:todo/widgets/topbar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          TopBar(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          //TODO
        },
        elevation: 5,
        tooltip: 'Добавить новую задачу',
      ),
    );
  }
}
