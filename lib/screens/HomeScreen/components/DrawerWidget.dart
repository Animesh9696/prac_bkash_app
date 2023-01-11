import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: Colors.white,
      child: ListView(
        children: [
          Text("Statement"),
          Text("Statement"),
          Text("Statement"),
          Text("Statement"),
          Text("Statement"),
          Text("Statement"),
          Text("Statement"),
          Text("Statement"),
          Text("Statement"),
          Text("Statement"),
          Text("Statement"),
          Text("Statement"),
          Text("Statement"),
        ],
      )
    );
  }
}
