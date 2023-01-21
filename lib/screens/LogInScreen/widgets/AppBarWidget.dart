import 'package:flutter/material.dart';
import 'package:prac_bkash_app/screens/Home/app.dart';
import 'package:prac_bkash_app/utilities/spacingWidget.dart';

class LoginAppBarWidget extends StatelessWidget {

  final bool _isVisible = true;

  LoginAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      width: double.infinity,
      height: 55,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Visibility(
            visible: _isVisible,
            child: Builder(builder: (context) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).pop(
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 5.0, right: 10.0),
                  child: Container(
                      width: 50,
                      height: 50,
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )),
                ),
              );
            }),
          ),
          Container(
            padding: addPadding(10),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1.0),
                borderRadius: BorderRadius.circular(15)),
            alignment: Alignment.center,
            child: const Text(
              "Bangla",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          )
        ],
      ),
    );
  }
}
