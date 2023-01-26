import 'package:flutter/material.dart';

import '../../../../widgets/menuwidget.dart';

class MoreServices extends StatelessWidget {
  const MoreServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              MenuWidget(
                  title: 'Send Money', image: 'assets/images/send_money.jpg'),
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
                  title: 'Add Money', image: 'assets/images/add_money.jpg'),
              MenuWidget(
                  title: 'Pay Bill', image: 'assets/images/pay_bill.jpg'),
              MenuWidget(title: 'Tickets', image: 'assets/images/tickets.jpg'),
            ],
          ),
        ],
      ),
    );
  }
}