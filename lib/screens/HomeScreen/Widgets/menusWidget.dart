import 'package:flutter/material.dart';
import 'package:prac_bkash_app/utilities/spacingWidget.dart';

import '../../../../widgets/MenuWidget.dart';

class MenusWidget extends StatefulWidget {
  const MenusWidget({Key? key}) : super(key: key);

  @override
  _MenusWidgetState createState() => _MenusWidgetState();
}

class _MenusWidgetState extends State<MenusWidget> {
  double size = 330;
  double t_margin = 3;
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(255, 255, 255, 1),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            height: size,
            child: Column(
              children: [
                Row(
                  children: [
                    const MenuWidget(
                        title: 'Send Money',
                        image: 'assets/images/send_money.jpg'),
                    const MenuWidget(
                        title: 'Recharge',
                        image: 'assets/images/mobile_recharge.jpg'),
                    const MenuWidget(
                        title: 'Cash Out', image: 'assets/images/cash_out.jpg'),
                    const MenuWidget(
                        title: 'Make Payment',
                        image: 'assets/images/make_payment.jpg'),
                  ],
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const MenuWidget(
                        title: 'Send Money',
                        image: 'assets/images/send_money.jpg'),
                    const MenuWidget(
                        title: 'Recharge',
                        image: 'assets/images/mobile_recharge.jpg'),
                    const MenuWidget(
                        title: 'Cash Out', image: 'assets/images/cash_out.jpg'),
                    const MenuWidget(
                        title: 'Make Payment',
                        image: 'assets/images/make_payment.jpg'),
                  ],
                ),
                const SizedBox(height: 8.0),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const MenuWidget(
                        title: 'Add Money',
                        image: 'assets/images/add_money.jpg'),
                    const MenuWidget(
                        title: 'Pay Bill', image: 'assets/images/pay_bill.jpg'),
                    const MenuWidget(
                        title: 'Tickets', image: 'assets/images/tickets.jpg'),
                    const MenuWidget(
                        title: 'More', image: 'assets/images/more.jpg'),
                  ],
                ),
              ],
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
              height: 30,
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
                                color: Colors.pink, fontSize: 12),
                          ),
                          Icon(
                            size: 18,
                            visible
                                ? Icons.arrow_downward
                                : Icons.arrow_upward_sharp,
                            color: Colors.pink,
                          )
                        ],
                      ),
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
