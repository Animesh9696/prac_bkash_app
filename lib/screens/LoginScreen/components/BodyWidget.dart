import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:prac_bkash_app/utilities/constants.dart';
import 'package:prac_bkash_app/utilities/spacingWidget.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          height: 700,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        margin: EdgeInsets.only(right: 125),
                        child: Image.asset(sampleImagepng)),
                    Container(
                        margin: EdgeInsets.only(left: 45),
                        child: Image.asset(sampleImagepng))
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(right: 15, top: 36),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Log In",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Text("to your bkash account",
                          style: TextStyle(
                              fontSize: 32,
                              color: Color.fromARGB(255, 156, 154, 148)))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 155, top: 36),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Account Number",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text("+88 01987971037",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 25, left: 40, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("bkash PIN",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                      Text("Forgot PIN?",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.pink))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 40),
                  child: TextField(
                    keyboardType: TextInputType.number,
                  ),
                )
              ]),
              Container(
                height: 45,
                color: Color.fromARGB(255, 136, 134, 126),
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text("Next",style: TextStyle(color: Colors.white,fontSize: 18),)),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Icon(Icons.arrow_forward,color: Colors.white,)),
                ],
              ))
            ],
          )),
    );
  }
}
