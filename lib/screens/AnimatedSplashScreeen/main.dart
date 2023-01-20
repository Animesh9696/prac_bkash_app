import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ink_page_indicator/ink_page_indicator.dart';

class AnimatedSplashScreen extends StatefulWidget {
  AnimatedSplashScreen({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<AnimatedSplashScreen> {
  late Timer _timer;

  double _size = 50.0;
  bool _large = false;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
      _updateSize();
    });
  }

  void _updateSize() {
    setState(() {
      _size = _large ? 200.0 : 100.0;
      _large = !_large;
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.pink,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: Container(
                color: Colors.pink,
                child: AnimatedSize(
                  curve: Curves.slowMiddle,
                  duration: const Duration(seconds: 1),
                  child: FlutterLogo(size: _size),
                ),
              ),
            ),
            Container(
              height: 50,
              width: 100,
              child: Image.asset("assets/images/loading_indicator.gif"),
            )
          ],
        ),
      ),
    );
  }

}
