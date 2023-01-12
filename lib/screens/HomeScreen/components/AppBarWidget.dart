import 'package:flutter/material.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  _AppBarWidgetState createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 50,
                margin: EdgeInsets.only(top: 10),
                child: Icon(
                  Icons.qr_code,
                  size: 50.0,
                ),
              ),
              SizedBox(width: 14.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8.0),
                  Text('Animesh Kumar',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.0)),
                  SizedBox(height: 6.0),
                  Container(
                    width: 200,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.0),
                          child: Container(
                            width: 25,
                            height: 25,
                            padding: EdgeInsets.all(2.0),
                            child: CircleAvatar(
                              backgroundColor: Colors.pink,
                              backgroundImage:
                                  AssetImage('assets/images/currency.png'),
                            ),
                          ),
                        ),
                        Text('200000000',
                            style: TextStyle(
                                color: Colors.pink,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600))
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      actions: [
        Builder(builder: (context) {
          return GestureDetector(
            onTap: () {
              Scaffold.of(context).openEndDrawer();
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 12.0, right: 10.0),
              child: Container(
                  width: 50,
                  height: 50,
                  child: Image.asset('assets/images/fly.png')),
            ),
          );
        }),
      ],
    );
  }
}
