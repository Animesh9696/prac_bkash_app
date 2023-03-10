import 'package:flutter/material.dart';
import 'package:prac_bkash_app/screens/HomeScreen/Widgets/Home.dart';
import 'package:prac_bkash_app/screens/LoginScreen/LoginScreen.dart';
import 'package:prac_bkash_app/utilities/constants.dart';
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
  var draweritemiconlist = [
    Icons.home,
    Icons.book,
    Icons.abc_rounded,
    Icons.cut_outlined,
    Icons.update,
    Icons.home,
    Icons.location_city,
    Icons.update,
    Icons.settings,
    Icons.people,
    Icons.support,
    Icons.home,
    Icons.logout_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        width: 300,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 15, right: 120),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "bKash Menu",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.pink,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 40, bottom: 20),
                    padding: const EdgeInsets.only(
                        left: 25, right: 25, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.pink, width: 2.0),
                        borderRadius: BorderRadius.circular(25)),
                    child: const Text(
                      "English",
                      style: TextStyle(fontSize: 15, color: Colors.pink),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
                child: Container(
              child: ListView.builder(
                  itemCount: draweritemtitlelist.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        if (index == 12) {
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                  builder: (context) => const LoginScreen()),
                              (Route route) => false);
                        } else {
                          Navigator.of(context).pop(
                            MaterialPageRoute(
                              builder: (context) => const Home(),
                            ),
                          );
                        }

                        final snackBar = SnackBar(
                          behavior: SnackBarBehavior.floating,
                          content:
                              Text("You Clicked ${draweritemtitlelist[index]}"),
                          action: SnackBarAction(
                            label: 'Undo',
                            onPressed: () {
                              // Some code to undo the change.
                            },
                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: addPadding(5),
                              color: Colors.white,
                              child: ListTile(
                                  leading: Icon(
                                    draweritemiconlist[index],
                                    size: 35,
                                    color: primaryColor2,
                                  ),
                                  trailing: const Text(
                                    "???",
                                    style: TextStyle(
                                        color: Colors.pink, fontSize: 25),
                                  ),
                                  title: Text(
                                    draweritemtitlelist[index],
                                    style: const TextStyle(
                                        fontSize: 18,
                                        color: secondaryTextColor,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            )),
          ],
        ));
  }
}
