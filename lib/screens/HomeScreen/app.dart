import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/AppBarWidget.dart';
import 'components/BodyWidget.dart';
import 'components/BottomNavigationBarWidget.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(82.0),
        child: const AppBarWidget(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.qr_code, color: Colors.pink, size: 40.0),
        tooltip: 'Increment',
        elevation: 2.0,
        backgroundColor: Colors.white,
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBarWidget(),
      body: BodyWidget(),
    );
  }
}