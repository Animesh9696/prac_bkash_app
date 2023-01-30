import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:prac_bkash_app/screens/Home/app.dart';
import 'package:prac_bkash_app/utilities/constants.dart';
import 'package:prac_bkash_app/utilities/spacingWidget.dart';

import '../../../widgets/keyboard.dart';

class BodyWidget extends StatefulWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  _BodyWidgetState createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
  bool _isVisible = true;
  bool _isLength = false;
  late String password = "";
  double hight = 60;
  bool arrowVisible = true;
  late String addStar = "";
  late TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                color: Colors.white,
                width: double.infinity,
                height: 55,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Visibility(
                        visible: arrowVisible,
                        child: Builder(builder: (context) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                if (_isVisible) {
                                  arrowVisible = false;
                                  _isVisible = false;
                                }
                              });
                            },
                            child: const SizedBox(
                                width: 50,
                                height: 50,
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Colors.pink,
                                )),
                          );
                        })),
                    Container(
                      margin:
                          const EdgeInsets.only(right: 30, top: 10, bottom: 10),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.pink, width: 1.0),
                          borderRadius: BorderRadius.circular(15)),
                      alignment: Alignment.center,
                      child: const Text(
                        "English",
                        style: TextStyle(color: primaryColor, fontSize: 18),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                margin: const EdgeInsets.only(right: 125),
                                child: Image.asset(sampleImagepng)),
                            Container(
                                height: 50,
                                width: 50,
                                margin: const EdgeInsets.only(left: 45),
                                child: Image.asset("assets/images/qr_code.png"))
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 15, top: 36),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Log In",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              const Text("to your bkash account",
                                  style: TextStyle(
                                      fontSize: 32,
                                      color:
                                          Color.fromARGB(255, 156, 154, 148)))
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 155, top: 36),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Account Number",
                                style: TextStyle(fontSize: 15),
                              ),
                              const Text("+88 01987971037",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 25, left: 40, right: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("bkash PIN",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              const Text("Forgot PIN?",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.pink))
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 40),
                          child: TextField(
                            controller: _controller,
                            showCursor: true,
                            readOnly: true,
                            onTap: () {
                              setState(() {
                                if (!_isVisible) {
                                  _isVisible = true;
                                  arrowVisible = true;
                                }
                              });
                            },
                            decoration: const InputDecoration(
                              hintText: 'Enter Pin',
                            ),
                          ),
                        )
                      ]),
                ),
              ),
              Container(
                  height: 45,
                  color:
                      _isLength ? Colors.pink : Color.fromARGB(31, 22, 21, 21),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Home()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            margin: const EdgeInsets.only(left: 20),
                            child: Text(
                              "Next",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )),
                        Container(
                            margin: const EdgeInsets.only(right: 20),
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  )),
              Visibility(
                  visible: _isVisible,
                  child: SizedBox(
                    height: 300,
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 9),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              MaterialButton(
                                onPressed: () {
                                  setState(() {
                                    password = password + "1";
                                    _controller.text = addStar + "*";
                                    if (password.length == 4) {
                                      _isLength = true;
                                    }
                                  });
                                },
                                color: Colors.white,
                                textColor: Colors.black,
                                child: const Text("1",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)),
                                shape: const CircleBorder(),
                                padding: const EdgeInsets.all(15),
                              ),
                              MaterialButton(
                                onPressed: () {
                                  setState(() {
                                    password = password + "2";
                                    _controller.text = addStar + "*";
                                    if (password.length == 4) {
                                      _isLength = true;
                                    }
                                  });
                                },
                                color: Colors.white,
                                textColor: Colors.black,
                                child: const Text("2",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)),
                                shape: const CircleBorder(),
                                padding: const EdgeInsets.all(15),
                              ),
                              MaterialButton(
                                onPressed: () {
                                  setState(() {
                                    password = password + "3";
                                    addStar = addStar + "*";
                                    _controller.text = addStar;
                                    if (password.length == 4) {
                                      _isLength = true;
                                    }
                                  });
                                },
                                color: Colors.white,
                                textColor: Colors.black,
                                child: const Text("3",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)),
                                shape: const CircleBorder(),
                                padding: const EdgeInsets.all(15),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 9),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              MaterialButton(
                                onPressed: () {
                                  setState(() {
                                    password = password + "4";
                                    addStar = addStar + "*";
                                    _controller.text = addStar;
                                    if (password.length == 4) {
                                      _isLength = true;
                                    }
                                  });
                                },
                                color: Colors.white,
                                textColor: Colors.black,
                                child: const Text("4",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)),
                                shape: const CircleBorder(),
                                padding: const EdgeInsets.all(15),
                              ),
                              MaterialButton(
                                onPressed: () {
                                  setState(() {
                                    password = password + "5";
                                    addStar = addStar + "*";
                                    _controller.text = addStar;
                                    if (password.length == 4) {
                                      _isLength = true;
                                    }
                                  });
                                },
                                color: Colors.white,
                                textColor: Colors.black,
                                child: const Text("5",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)),
                                shape: const CircleBorder(),
                                padding: const EdgeInsets.all(15),
                              ),
                              MaterialButton(
                                onPressed: () {
                                  setState(() {
                                    password = password + "6";
                                    addStar = addStar + "*";
                                    _controller.text = addStar;
                                    if (password.length == 4) {
                                      _isLength = true;
                                    }
                                  });
                                },
                                color: Colors.white,
                                textColor: Colors.black,
                                child: const Text("6",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)),
                                shape: const CircleBorder(),
                                padding: const EdgeInsets.all(15),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 9),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              MaterialButton(
                                onPressed: () {
                                  setState(() {
                                    password = password + "7";
                                    addStar = addStar + "*";
                                    _controller.text = addStar;
                                    if (password.length == 4) {
                                      _isLength = true;
                                    }
                                  });
                                },
                                color: Colors.white,
                                textColor: Colors.black,
                                child: const Text("7",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)),
                                shape: const CircleBorder(),
                                padding: const EdgeInsets.all(15),
                              ),
                              MaterialButton(
                                onPressed: () {
                                  setState(() {
                                    password = password + "8";
                                    addStar = addStar + "*";
                                    _controller.text = addStar;
                                    if (password.length == 4) {
                                      _isLength = true;
                                    }
                                  });
                                },
                                color: Colors.white,
                                textColor: Colors.black,
                                child: const Text("8",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)),
                                shape: const CircleBorder(),
                                padding: const EdgeInsets.all(15),
                              ),
                              MaterialButton(
                                onPressed: () {
                                  setState(() {
                                    password = password + "9";
                                    addStar = addStar + "*";
                                    _controller.text = addStar;
                                    if (password.length == 4) {
                                      _isLength = true;
                                    }
                                  });
                                },
                                color: Colors.white,
                                textColor: Colors.black,
                                child: const Text("9",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)),
                                shape: const CircleBorder(),
                                padding: const EdgeInsets.all(15),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 9),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              MaterialButton(
                                onPressed: () {
                                  setState(() {
                                    _isLength = false;
                                    _controller.clear();
                                    password = "";
                                    addStar = "";
                                  });
                                },
                                color: Colors.white,
                                textColor: Colors.black,
                                child: const Text("X",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)),
                                shape: const CircleBorder(),
                                padding: const EdgeInsets.all(15),
                              ),
                              MaterialButton(
                                onPressed: () {
                                  setState(() {
                                    password = password + "0";
                                    addStar = addStar + "*";
                                    _controller.text = addStar;
                                    if (password.length == 4) {
                                      _isLength = true;
                                      _controller.text = password;
                                    }
                                  });
                                },
                                color: Colors.white,
                                textColor: Colors.black,
                                child: const Text("0",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)),
                                shape: const CircleBorder(),
                                padding: const EdgeInsets.all(15),
                              ),
                              MaterialButton(
                                onPressed: () {
                                  setState(() {
                                    _isVisible = false;
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Home()));
                                  });
                                },
                                color: Colors.white,
                                textColor: Colors.black,
                                child: const Text("Go",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)),
                                shape: const CircleBorder(),
                                padding: const EdgeInsets.all(15),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
        onWillPop: () async {
          setState(() {
            if (_isVisible) {
              _isVisible = false;
              arrowVisible = false;
            }
          });
          return false;
        });
  }
}