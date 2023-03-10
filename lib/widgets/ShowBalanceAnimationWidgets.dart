import 'package:flutter/material.dart';
import 'package:prac_bkash_app/utilities/constants.dart';

class ShowBalanceAnimationWidget extends StatefulWidget {
  const ShowBalanceAnimationWidget({Key? key}) : super(key: key);

  @override
  _ShowBalanceAnimationWidgetState createState() =>
      _ShowBalanceAnimationWidgetState();
}

class _ShowBalanceAnimationWidgetState
    extends State<ShowBalanceAnimationWidget> {
  bool _isBalanceShow = false;
  bool _isAnimation = false;
  bool _isBalance = true;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: changeState,
      child: Container(
        width: 155,
        height: 30,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedOpacity(
              opacity: _isBalanceShow ? 1 : 0,
              duration: const Duration(milliseconds: 1000),
              child: Container(
                margin: const EdgeInsets.only(top: 3, right: 3),
                child: const Text(
                  "500.0",
                  style: TextStyle(fontSize: 16, color: primaryColor2),
                ),
              ),
            ),
            AnimatedOpacity(
              opacity: _isBalance ? 1 : 0,
              duration: const Duration(milliseconds: 1000),
              child: Container(
                margin: const EdgeInsets.only(left: 15),
                child: const Text(
                  "Tap for Balance",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: primaryColor2),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 1000),
              left: _isAnimation == false ? 5 : 130,
              curve: Curves.fastOutSlowIn,
              child: Container(
                height: 20,
                width: 20,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: primaryColor2,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text(
                  "???",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  changeState() async {
    _isAnimation = true;
    _isBalance = false;

    setState(() {});

    await Future.delayed(
        const Duration(seconds: 1),
        () => {
              setState(
                () => _isBalanceShow = true,
              )
            });
    await Future.delayed(
        const Duration(seconds: 5),
        () => {
              setState(
                () => _isBalanceShow = false,
              )
            });
    await Future.delayed(
        const Duration(milliseconds: 300),
        () => {
              setState(
                () => _isAnimation = false,
              )
            });
    await Future.delayed(
        const Duration(milliseconds: 300),
        () => {
              setState(
                () => _isBalance = true,
              )
            });
  }
}
