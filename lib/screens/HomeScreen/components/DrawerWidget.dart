import 'package:flutter/material.dart';

import '../../Home/app.dart';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: Container(
                child: TextButton(
                    onPressed: (){
                      Navigator.of(context).pop(
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ),
                    );
                    },
                    child: Text(
                  "Hello",
                )),
              ),
            )
          ],
        ));
  }
}
