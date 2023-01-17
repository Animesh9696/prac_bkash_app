import 'package:flutter/material.dart';

import '../../../../widgets/card.dart';

class MyBkashWidget extends StatelessWidget {
  const MyBkashWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Colors.white,
        margin: EdgeInsets.only(left: 12.0, right: 12.0, bottom: 12.0),
        child: Container(
          width: Size.infinite.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('My bKash'),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CardWidget(
                        title: 'Recharge',
                        image: 'assets/images/mobile_recharge.jpg'),
                    CardWidget(
                        title: 'Akash',
                        image: 'assets/images/make_payment.jpg'),
                    CardWidget(
                        title: 'Internet', image: 'assets/images/pay_bill.jpg'),
                    CardWidget(
                        title: 'Card', image: 'assets/images/add_money.jpg'),
                    CardWidget(
                        title: 'Mobile Recharge',
                        image: 'assets/images/mobile_recharge.jpg'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
