import 'package:flutter/material.dart';

import 'widgets/card.dart';

class OfferWidget extends StatelessWidget {
  const OfferWidget({Key? key}) : super(key: key);

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
                child: Text('Offers'),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CardWidget(
                        title: 'Daraz', image: 'assets/images/daraz.jpg'),
                    CardWidget(
                        title: 'Airtel', image: 'assets/images/airtel.jpg'),
                    CardWidget(
                        title: 'Ajkerdeal',
                        image: 'assets/images/ajkerdeal.jpg'),
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
      ),
    );
  }
}
