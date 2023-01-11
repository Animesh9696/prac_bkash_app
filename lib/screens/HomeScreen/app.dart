import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/AppBarWidget.dart';
import 'components/BodyWidget.dart';
import 'components/BottomNavigationBarWidget.dart';
import 'components/DrawerWidget.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<MyHomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.grey[200],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(82.0),
        child: AppBarWidget()
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
      endDrawer: DrawerWidget(),
    );
  }
}
