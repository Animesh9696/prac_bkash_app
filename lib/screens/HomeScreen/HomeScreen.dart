import 'package:flutter/material.dart';
import 'package:prac_bkash_app/screens/HomeScreen/Widgets/Home.dart';
import 'package:prac_bkash_app/screens/InboxScreen/InboxScreen.dart';
import 'package:prac_bkash_app/utilities/spacingWidget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _AppState createState() => _AppState();
}

class _AppState extends State<Home> {
  int _currentTab = 0; // to keep track of active tab index
  final List<Widget> screens = [
    const HomeScreen(),
    const InboxScreen(),
  ];

  Widget _currentScreen = const HomeScreen();

  @override
  Widget build(BuildContext context) {
    double bottomappbarHeight = 70;
    double notchMargin = 10;
    double materialButton = 40;
    double buttoniconSize = 35;

    return Scaffold(
      body: _currentScreen,
      bottomNavigationBar: SizedBox(
        height: bottomappbarHeight,
        child: BottomAppBar(
          notchMargin: notchMargin,
          shape: const CircularNotchedRectangle(),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              MaterialButton(
                minWidth: materialButton,
                onPressed: () {
                  setState(() {
                    _currentScreen =
                        const HomeScreen(); // if user taps on this dashboard tab will be active
                    _currentTab = 0;
                  });
                },
                child: Container(
                  margin: addMarginLeft(25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.home,
                        size: buttoniconSize,
                        color: _currentTab == 0 ? Colors.pink : Colors.grey,
                      ),
                      Text(
                        'HOME',
                        style: TextStyle(
                          color: _currentTab == 0 ? Colors.pink : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: addMarginTop(25),
                child: const Text(
                  'QR SCAN',
                  style: TextStyle(),
                ),
              ),
              MaterialButton(
                minWidth: materialButton,
                onPressed: () {
                  setState(() {
                    _currentScreen =
                        const InboxScreen(); // if user taps on this dashboard tab will be active
                    _currentTab = 1;
                  });
                },
                child: Container(
                  margin: addMarginRight(25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.mail_rounded,
                        size: buttoniconSize,
                        color: _currentTab == 1 ? Colors.pink : Colors.grey,
                      ),
                      Text(
                        'INBOX',
                        style: TextStyle(
                          color: _currentTab == 1 ? Colors.pink : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          clipBehavior: Clip.none,
          backgroundColor: Colors.white,
          onPressed: () {},
          child: const Icon(
            Icons.qr_code_scanner,
            color: Colors.black,
          )),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
