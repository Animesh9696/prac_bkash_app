import 'package:flutter/material.dart';

import '../app.dart';

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
            drawerItem("Statement"),
            drawerItem("Balanceshit"),
            drawerItem("History"),
            drawerItem("Transation"),
            drawerItem("Prio Point"),
            drawerItem("Hello"),
            drawerItem("Hello"),
            drawerItem("Hello"),
            drawerItem("Hello"),
            drawerItem("Hello"),
            drawerItem("Log Out"),
          ],
        ));
  }

  @override
  Widget drawerItem(String title) {
    return Container(
      child: Card(
        child: Container(
          child: TextButton(
              onPressed: () {
                Navigator.of(context).pop(
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                );
              },
              child: Text(
                title,
              )),
        ),
      ),
    );
  }
}
