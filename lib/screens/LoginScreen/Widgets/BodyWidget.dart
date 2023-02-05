import 'dart:ffi';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:prac_bkash_app/screens/HomeScreen/HomeScreen.dart';
import 'package:prac_bkash_app/screens/HomeScreen/Widgets/app.dart';
import 'package:prac_bkash_app/utilities/constants.dart';
import 'package:prac_bkash_app/utilities/spacingWidget.dart';

import '../../../widgets/KeyboardWidget.dart';

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
                margin: const EdgeInsets.only(bottom: 10),
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
                  child: Container(
                    margin: EdgeInsets.only(left: 35, right: 35),
                    padding: EdgeInsets.all(5),
                    child: Column(children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                height: 50,
                                width: 50,
                                child:
                                    Image.asset("assets/images/colorfly.png")),
                            Container(
                                height: 50,
                                width: 50,
                                child: Image.asset("assets/images/qr_code.png"))
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 30),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Log In",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text("to your bkash account",
                                    style: TextStyle(
                                        fontSize: 32,
                                        color:
                                            Color.fromARGB(255, 156, 154, 148)))
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 30),
                        child: Row(
                          children: [
                            Column(
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
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("bkash PIN",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold)),
                            const Text("Forgot PIN?",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.pink))
                          ],
                        ),
                      ),
                      Container(
                        child: TextFormField(
                          obscureText: true,
                          controller: _controller,
                          showCursor: true,
                          autofocus: true,
                          // obscuringCharacter: "",
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
                      ),
                      addVerticalSpace(50)
                    ]),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _isLength ? showIndicator() : null;
                },
                child: Container(
                  height: 40,
                  color: _isLength
                      ? Colors.pink
                      : const Color.fromARGB(255, 190, 188, 185),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: const Text(
                            "Next",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )),
                      Container(
                          margin: const EdgeInsets.only(right: 20),
                          child: const Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
              ),
              Visibility(
                  visible: _isVisible,
                  child: SizedBox(
                    height: 230,
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              MaterialButton(
                                onPressed: () {
                                  setState(() {
                                    password = "${password}1";
                                    _controller.text = password;
                                    if (password.length == 4) {
                                      _isLength = true;
                                    }
                                  });
                                },
                                color: Colors.white,
                                textColor: Colors.black,
                                shape: const CircleBorder(),
                                child: const Text("1",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)),
                              ),
                              MaterialButton(
                                onPressed: () {
                                  setState(() {
                                    password = "${password}2";
                                    _controller.text = password;
                                    _controller.selection =
                                        TextSelection.fromPosition(TextPosition(
                                            offset: _controller.text.length));
                                    if (password.length == 4) {
                                      _isLength = true;
                                    }
                                  });
                                },
                                color: Colors.white,
                                textColor: Colors.black,
                                shape: const CircleBorder(),
                                child: const Text("2",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)),
                              ),
                              MaterialButton(
                                onPressed: () {
                                  setState(() {
                                    password = "${password}3";
                                    _controller.text = password;
                                    _controller.selection =
                                        TextSelection.fromPosition(TextPosition(
                                            offset: _controller.text.length));
                                    if (password.length == 4) {
                                      _isLength = true;
                                    }
                                  });
                                },
                                color: Colors.white,
                                textColor: Colors.black,
                                shape: const CircleBorder(),
                                child: const Text("3",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)),
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
                                    password = "${password}4";
                                    _controller.text = password;
                                    _controller.selection =
                                        TextSelection.fromPosition(TextPosition(
                                            offset: _controller.text.length));
                                    if (password.length == 4) {
                                      _isLength = true;
                                    }
                                  });
                                },
                                color: Colors.white,
                                textColor: Colors.black,
                                shape: const CircleBorder(),
                                child: const Text("4",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)),
                              ),
                              MaterialButton(
                                onPressed: () {
                                  setState(() {
                                    password = "${password}5";
                                    _controller.text = password;
                                    _controller.selection =
                                        TextSelection.fromPosition(TextPosition(
                                            offset: _controller.text.length));
                                    if (password.length == 4) {
                                      _isLength = true;
                                    }
                                  });
                                },
                                color: Colors.white,
                                textColor: Colors.black,
                                shape: const CircleBorder(),
                                child: const Text("5",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)),
                              ),
                              MaterialButton(
                                onPressed: () {
                                  setState(() {
                                    password = "${password}6";
                                    _controller.text = password;
                                    _controller.selection =
                                        TextSelection.fromPosition(TextPosition(
                                            offset: _controller.text.length));
                                    if (password.length == 4) {
                                      _isLength = true;
                                    }
                                  });
                                },
                                color: Colors.white,
                                textColor: Colors.black,
                                shape: const CircleBorder(),
                                child: const Text("6",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)),
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
                                    password = "${password}7";
                                    _controller.text = password;
                                    _controller.selection =
                                        TextSelection.fromPosition(TextPosition(
                                            offset: _controller.text.length));
                                    if (password.length == 4) {
                                      _isLength = true;
                                    }
                                  });
                                },
                                color: Colors.white,
                                textColor: Colors.black,
                                shape: const CircleBorder(),
                                child: const Text("7",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)),
                              ),
                              MaterialButton(
                                onPressed: () {
                                  setState(() {
                                    password = "${password}8";
                                    _controller.text = password;
                                    _controller.selection =
                                        TextSelection.fromPosition(TextPosition(
                                            offset: _controller.text.length));
                                    if (password.length == 4) {
                                      _isLength = true;
                                    }
                                  });
                                },
                                color: Colors.white,
                                textColor: Colors.black,
                                shape: const CircleBorder(),
                                child: const Text("8",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)),
                              ),
                              MaterialButton(
                                onPressed: () {
                                  setState(() {
                                    password = "${password}9";
                                    _controller.text = password;
                                    _controller.selection =
                                        TextSelection.fromPosition(TextPosition(
                                            offset: _controller.text.length));
                                    if (password.length == 4) {
                                      _isLength = true;
                                    }
                                  });
                                },
                                color: Colors.white,
                                textColor: Colors.black,
                                shape: const CircleBorder(),
                                child: const Text("9",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)),
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
                                shape: const CircleBorder(),
                                child: const Icon(
                                  Icons.cancel,
                                  size: 30,
                                ),
                              ),
                              MaterialButton(
                                onPressed: () {
                                  setState(() {
                                    password = "${password}0";
                                    _controller.text = password;
                                    _controller.selection =
                                        TextSelection.fromPosition(TextPosition(
                                            offset: _controller.text.length));
                                    if (password.length == 4) {
                                      _isLength = true;
                                      _controller.text = password;
                                    }
                                  });
                                },
                                color: Colors.white,
                                textColor: Colors.black,
                                shape: const CircleBorder(),
                                child: const Text("0",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)),
                              ),
                              MaterialButton(
                                onPressed: () {
                                  setState(() {
                                    _isVisible = false;
                                    arrowVisible = false;
                                    // Navigator.pushReplacement(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) =>
                                    //             const Home()));
                                  });
                                },
                                color: Colors.pink,
                                textColor: Colors.black,
                                shape: const CircleBorder(),
                                child: const Icon(Icons.arrow_forward),
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

  showIndicator() {
    showDialog(
        barrierDismissible: false,
        useRootNavigator: false,
        context: context,
        builder: (context) {
          return Center(
            child: LoadingAnimationWidget.staggeredDotsWave(
              color: Colors.pink,
              size: 50,
            ),
          );
        });

    Future.delayed(const Duration(seconds: 3), () {
      if (password == "12345") {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => Home()),
            (Route route) => false);
      } else {
        // Fluttertoast.showToast(
        //     msg: "Password Error!",
        //     toastLength: Toast.LENGTH_SHORT,
        //     gravity: ToastGravity.TOP,
        //     timeInSecForIosWeb: 1,
        //     backgroundColor: Colors.red,
        //     textColor: Colors.white,
        //     fontSize: 16.0);
        final snackBar = SnackBar(
          backgroundColor: Colors.red,
          content: const Text('Password Incorrect !'),
          action: SnackBarAction(
            label: 'Undo',
            onPressed: () {
              // Some code to undo the change.
            },
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        Navigator.of(context, rootNavigator: true).pop();

        setState(() {
          password = "";
          _controller.text = "";
          _isLength = false;
        });
      }
    });
  }
}
