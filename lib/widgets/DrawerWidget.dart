import 'package:flutter/material.dart';
import 'package:prac_bkash_app/screens/HomeScreen/Widgets/Home.dart';
import 'package:prac_bkash_app/screens/LoginScreen/LoginScreen.dart';
import 'package:prac_bkash_app/utilities/spacingWidget.dart';

import '../screens/HomeScreen/HomeScreen.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  var draweritemtitlelist = [
    'Home',
    'Statements',
    'Limits',
    'Coupons',
    'Information Update',
    'Refer bkash App',
    'bkash Map',
    'Discover bkash',
    'Settings',
    'Refer bkash App',
    'Support',
    'Coupons',
    'Log Out',
  ];
  var draweritemimagelist = [
    'assets/images/colorfly.png',
    'assets/images/colorfly.png',
    'assets/images/colorfly.png',
    'assets/images/colorfly.png',
    'assets/images/colorfly.png',
    'assets/images/colorfly.png',
    'assets/images/colorfly.png',
    'assets/images/colorfly.png',
    'assets/images/colorfly.png',
    'assets/images/colorfly.png',
    'assets/images/colorfly.png',
    'assets/images/colorfly.png',
    'assets/images/colorfly.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(right: 120),
              padding: addPadding(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "bKash Menu",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.pink,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 20),
                    padding:
                        EdgeInsets.only(left: 25, right: 25, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.pink, width: 2.0),
                        borderRadius: BorderRadius.circular(25)),
                    child: Text(
                      "English",
                      style: TextStyle(fontSize: 15, color: Colors.pink),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: draweritemtitlelist.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          if (index == 12) {
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()),
                                (Route route) => false);
                          } else {
                            Navigator.of(context).pop(
                              MaterialPageRoute(
                                builder: (context) => Home(),
                              ),
                            );
                          }

                          final snackBar = SnackBar(
                            behavior: SnackBarBehavior.floating,
                            content: Text(
                                "You Clicked ${draweritemtitlelist[index]}"),
                            action: SnackBarAction(
                              label: 'Undo',
                              onPressed: () {
                                // Some code to undo the change.
                              },
                            ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        child: ListTile(
                            leading: Image.asset(
                              draweritemimagelist[index],
                              height: 40,
                              width: 40,
                            ),
                            trailing: const Text(
                              "*",
                              style:
                                  TextStyle(color: Colors.pink, fontSize: 25),
                            ),
                            title: Text(
                              draweritemtitlelist[index],
                              style: const TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 31, 29, 29)),
                            )),
                      );
                    })),
          ],
        ));
  }
}
