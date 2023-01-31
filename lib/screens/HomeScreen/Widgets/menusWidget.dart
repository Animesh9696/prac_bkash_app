import 'package:flutter/material.dart';

import '../../../../widgets/MenuWidget.dart';

class MenusWidget extends StatefulWidget {
  const MenusWidget({Key? key}) : super(key: key);

  @override
  _MenusWidgetState createState() => _MenusWidgetState();
}

class _MenusWidgetState extends State<MenusWidget> {
  double size = 350;
  double t_margin = 3;
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(255, 255, 255, 1),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            height: size,
            child: Column(
              children: [
                Row(
                  children: [
                    MenuWidget(
                        title: 'Send Money',
                        image: 'assets/images/send_money.jpg'),
                    MenuWidget(
                        title: 'Recharge',
                        image: 'assets/images/mobile_recharge.jpg'),
                    MenuWidget(
                        title: 'Cash Out', image: 'assets/images/cash_out.jpg'),
                    MenuWidget(
                        title: 'Make Payment',
                        image: 'assets/images/make_payment.jpg'),
                  ],
                ),
                Row(
                  children: [
                    MenuWidget(
                        title: 'Send Money',
                        image: 'assets/images/send_money.jpg'),
                    MenuWidget(
                        title: 'Recharge',
                        image: 'assets/images/mobile_recharge.jpg'),
                    MenuWidget(
                        title: 'Cash Out', image: 'assets/images/cash_out.jpg'),
                    MenuWidget(
                        title: 'Make Payment',
                        image: 'assets/images/make_payment.jpg'),
                  ],
                ),
                SizedBox(height: 8.0),
                Row(
                  children: [
                    MenuWidget(
                        title: 'Add Money',
                        image: 'assets/images/add_money.jpg'),
                    MenuWidget(
                        title: 'Pay Bill', image: 'assets/images/pay_bill.jpg'),
                    MenuWidget(
                        title: 'Tickets', image: 'assets/images/tickets.jpg'),
                    MenuWidget(title: 'More', image: 'assets/images/more.jpg'),
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
                      t_margin = 3;
                    } else {
                      visible = true;
                      size = 310;
                      t_margin = 35;
                    }
                  });
                },
                child: Container(
                    width: 90,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          visible ? "See More" : "Close",
                          style: TextStyle(color: Colors.pink),
                        ),
                        Icon(
                            visible ? Icons.arrow_downward : Icons.arrow_upward)
                      ],
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
