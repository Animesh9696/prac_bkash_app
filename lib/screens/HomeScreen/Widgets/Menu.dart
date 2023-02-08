import 'package:flutter/material.dart';
import 'package:prac_bkash_app/utilities/constants.dart';
import 'package:prac_bkash_app/utilities/spacingWidget.dart';

import '../../../../widgets/MenuWidget.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  double size = 310;
  // ignore: non_constant_identifier_names
  double t_margin = 45;
  bool visible = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          alignment: Alignment.center,
          child: SizedBox(
            height: size,
            child: Column(
              children: [
                Row(
                  children: const [
                    Expanded(
                      child: MenuWidget(
                          title: 'Send Money',
                          image: 'assets/images/send_money.jpg'),
                    ),
                    Expanded(
                      child: MenuWidget(
                          title: 'Recharge',
                          image: 'assets/images/mobile_recharge.jpg'),
                    ),
                    Expanded(
                      child: MenuWidget(
                          title: 'Cash Out',
                          image: 'assets/images/cash_out.jpg'),
                    ),
                    Expanded(
                      child: MenuWidget(
                          title: 'Payment',
                          image: 'assets/images/make_payment.jpg'),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Expanded(
                      child: MenuWidget(
                          title: 'Send Money',
                          image: 'assets/images/send_money.jpg'),
                    ),
                    Expanded(
                      child: MenuWidget(
                          title: 'Recharge',
                          image: 'assets/images/mobile_recharge.jpg'),
                    ),
                    Expanded(
                      child: MenuWidget(
                          title: 'Cash Out',
                          image: 'assets/images/cash_out.jpg'),
                    ),
                    Expanded(
                      child: MenuWidget(
                          title: 'Payment',
                          image: 'assets/images/make_payment.jpg'),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Expanded(
                      child: MenuWidget(
                          title: 'Send Money',
                          image: 'assets/images/send_money.jpg'),
                    ),
                    Expanded(
                      child: MenuWidget(
                          title: 'Recharge',
                          image: 'assets/images/mobile_recharge.jpg'),
                    ),
                    Expanded(
                      child: MenuWidget(
                          title: 'Cash Out',
                          image: 'assets/images/cash_out.jpg'),
                    ),
                    Expanded(
                      child: MenuWidget(
                          title: 'Payment',
                          image: 'assets/images/make_payment.jpg'),
                    ),
                  ],
                ),
              ],
            ),
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
          margin: EdgeInsets.only(bottom: t_margin),
          child: Container(
            alignment: Alignment.center,
            width: 110,
            height: 40,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  if (visible) {
                    visible = false;
                    size = 350;
                    t_margin = 8;
                  } else {
                    visible = true;
                    size = 310;
                    t_margin = 45;
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
