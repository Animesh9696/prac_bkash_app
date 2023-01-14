import 'package:flutter/material.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      height: double.infinity,
      width: double.infinity,
      color: Colors.white,
      child: Card(
        elevation: 15,
        child: Container(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                height: 400,
                width: 400,
                child: Icon(Icons.notifications)),
            SizedBox(
              height: 5,
            ),
          ],
              ),
        ),
      )
    );
  }
}