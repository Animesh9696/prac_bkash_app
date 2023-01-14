import 'package:flutter/material.dart';

import 'widgets/card.dart';

class SuggestionWidget extends StatelessWidget {
  const SuggestionWidget({Key? key}) : super(key: key);

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
                child: Text('Suggestions'),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CardWidget(
                        title: 'Card bill',
                        image: 'assets/images/card_bill.jpg'),
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
    );
  }
}
