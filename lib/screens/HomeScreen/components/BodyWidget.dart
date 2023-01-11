import 'package:flutter/material.dart';

import '../widgets/card.dart';
import '../widgets/menuwidget.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(12.0),
            margin: EdgeInsets.only(bottom: 12.0),
            child: Column(
              children: [
                Row(
                  children: [
                    MenuWidget(
                        title: 'Send Money', image: 'assets/images/send_money.jpg'),
                    MenuWidget(
                        title: 'Recharge', image: 'assets/images/mobile_recharge.jpg'),
                    MenuWidget(title: 'Cash Out', image: 'assets/images/cash_out.jpg'),
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
                    MenuWidget(title: 'Pay Bill', image: 'assets/images/pay_bill.jpg'),
                    MenuWidget(title: 'Tickets', image: 'assets/images/tickets.jpg'),
                    MenuWidget(title: 'More', image: 'assets/images/more.jpg'),
                  ],
                ),
              ],
            ),
          ),
          Card(
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
                            title: 'Animesh Kumar',
                            image: 'assets/images/mobile_recharge.jpg'),
                        CardWidget(
                            title: 'Akash', image: 'assets/images/make_payment.jpg'),
                        CardWidget(
                            title: 'Internet', image: 'assets/images/pay_bill.jpg'),
                        CardWidget(
                            title: 'Card', image: 'assets/images/add_money.jpg'),
                        CardWidget(
                            title: 'Sohel Rana',
                            image: 'assets/images/mobile_recharge.jpg'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
              color: Colors.white,
              margin: EdgeInsets.only(left: 12.0, right: 12.0, bottom: 12.0),
              child: Container(
                width: Size.infinite.width,
                child: Image.asset('assets/images/banner.jpg'),
              )),
          Card(
            color: Colors.white,
            margin: EdgeInsets.only(left: 12.0, right: 12.0, bottom: 12.0),
            child: Container(
              width: Size.infinite.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Suggestions'),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CardWidget(
                            title: 'Card bill', image: 'assets/images/card_bill.jpg'),
                        CardWidget(title: 'BTCL', image: 'assets/images/btcl.jpg'),
                        CardWidget(
                            title: 'CoronaBD', image: 'assets/images/coronabd.jpg'),
                        CardWidget(
                            title: 'Donation', image: 'assets/images/donation.jpg'),
                        CardWidget(
                            title: 'MetLife', image: 'assets/images/metlife.jpg'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.only(left: 12.0, right: 12.0, bottom: 12.0),
            child: Container(
              width: Size.infinite.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Offters'),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CardWidget(title: 'Daraz', image: 'assets/images/daraz.jpg'),
                        CardWidget(title: 'Airtel', image: 'assets/images/airtel.jpg'),
                        CardWidget(
                            title: 'Ajkerdeal', image: 'assets/images/ajkerdeal.jpg'),
                        CardWidget(
                            title: 'Grameenphone',
                            image: 'assets/images/grameenphone.jpg'),
                        CardWidget(title: 'Robi', image: 'assets/images/robi.jpg'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}