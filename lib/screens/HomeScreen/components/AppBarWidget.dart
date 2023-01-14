import 'package:flutter/material.dart';

import '../../QrcodeScreen/app.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  _AppBarWidgetState createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  bool _isBalanceShow = false;
  bool _isAnimation = false;
  bool _isBalance = true;

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
                child: IconButton(
                  iconSize: 50,
                  icon: const Icon(
                    Icons.qr_code,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => QrCodeScreen(),
                      ),
                    );
                  },
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
                  InkWell(
                    onTap: changeState,
                    child: Container(
                      width: 160,
                      height: 28,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          AnimatedOpacity(
                            opacity: _isBalanceShow ? 1 : 0,
                            duration: Duration(milliseconds: 500),
                            child: Text(
                              "Tk 2000",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          AnimatedOpacity(
                            opacity: _isBalance ? 1 : 0,
                            duration: Duration(milliseconds: 300),
                            child: Text(
                              "Show",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          AnimatedPositioned(
                            child: Container(
                              height: 20,
                              width: 20,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Text(
                                "",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                            ),
                            duration: Duration(milliseconds: 100),
                            left: _isAnimation == false ? 5 : 135,
                            curve: Curves.fastOutSlowIn,
                          )
                        ],
                      ),
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

  changeState() async {
    _isAnimation = true;
    _isBalance = false;

    setState(() {});

    await Future.delayed(
        Duration(milliseconds: 800),
        () => {
              setState(
                () => _isBalanceShow = true,
              )
            });
    await Future.delayed(
        Duration(milliseconds: 800),
        () => {
              setState(
                () => _isBalanceShow = false,
              )
            });
    await Future.delayed(
        Duration(milliseconds: 300),
        () => {
              setState(
                () => _isAnimation = false,
              )
            });
    await Future.delayed(
        Duration(milliseconds: 200),
        () => {
              setState(
                () => _isBalance = true,
              )
            });
  }
}
