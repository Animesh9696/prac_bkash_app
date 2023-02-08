import 'package:flutter/material.dart';
import 'package:prac_bkash_app/utilities/constants.dart';
import 'package:prac_bkash_app/utilities/spacingWidget.dart';
import 'package:prac_bkash_app/widgets/MenuMoreWidget.dart';

import '../../../../widgets/MenuWidget.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  double size = 310;
  bool visible = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: size,
          alignment: Alignment.topCenter,
          child: SizedBox(
            height: 310,
            child: MenuMoreWidget(menuMore: menuSample),
          ),
        ),
        Visibility(
          visible: visible,
          child: Opacity(
            opacity: 0.8,
            child: SizedBox(
              height: 100,
              child: Container(
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Container(
            alignment: Alignment.center,
            width: 110,
            height: 40,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  if (visible) {
                    visible = false;
                    size = 380;
                  } else {
                    visible = true;
                    size = 310;
                  }
                });
              },
              child: SizedBox(
                  height: 45,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.white,
                    elevation: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          visible ? "See More" : "Close",
                          style: const TextStyle(
                              color: primaryColor2, fontSize: 12),
                        ),
                        Icon(
                          size: 18,
                          visible
                              ? Icons.arrow_downward
                              : Icons.arrow_upward_sharp,
                          color: primaryColor2,
                        )
                      ],
                    ),
                  )),
            ),
          ),
        )
      ],
    );
  }
}
