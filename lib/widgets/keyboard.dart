import 'package:flutter/material.dart';

class Keyboard extends StatefulWidget {
  const Keyboard({ Key? key }) : super(key: key);

  @override
  _KeyboardState createState() => _KeyboardState();
}

class _KeyboardState extends State<Keyboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [],
          ),
          Row(
            children: [],
          ),
          Row(
            children: [],
          ),
          Row(
            children: [],
          ),
        ],
      ),
    );
  }
}