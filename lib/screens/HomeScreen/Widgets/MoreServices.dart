import 'package:flutter/material.dart';
import 'package:prac_bkash_app/utilities/spacingWidget.dart';

import '../../../../widgets/MenuWidget.dart';

class MoreServices extends StatelessWidget {
  const MoreServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 5, bottom: 5),
        color: Colors.white,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 2, left: 5,bottom: 2),
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1, color: const Color.fromARGB(255, 230, 224, 224))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [Text("More Services")],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 2, left: 5),
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1, color: const Color.fromARGB(255, 230, 224, 224))),
              child: Column(
                children: [
                  Row(
                    children: const [
                      MenuWidget(
                          title: 'Send Money',
                          image: 'assets/images/send_money.jpg'),
                      MenuWidget(
                          title: 'Recharge',
                          image: 'assets/images/mobile_recharge.jpg'),
                      MenuWidget(
                          title: 'Cash Out',
                          image: 'assets/images/cash_out.jpg'),
                      MenuWidget(
                          title: 'Make Payment',
                          image: 'assets/images/make_payment.jpg'),
                    ],
                  ),
                  addVerticalSpace(8),
                  Row(
                    children: const [
                      MenuWidget(
                          title: 'Add Money',
                          image: 'assets/images/add_money.jpg'),
                      MenuWidget(
                          title: 'Pay Bill',
                          image: 'assets/images/pay_bill.jpg'),
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
