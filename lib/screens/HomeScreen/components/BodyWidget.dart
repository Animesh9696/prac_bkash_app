import 'package:flutter/material.dart';
import 'package:prac_bkash_app/screens/HomeScreen/components/Body/bannerWidget.dart';
import 'package:prac_bkash_app/widgets/crouselWidget.dart';
import 'package:prac_bkash_app/screens/HomeScreen/components/Body/menusWidget.dart';
import 'package:prac_bkash_app/screens/HomeScreen/components/Body/myBkashWidget.dart';
import 'package:prac_bkash_app/screens/HomeScreen/components/Body/offerWidget.dart';
import 'package:prac_bkash_app/screens/HomeScreen/components/Body/suggestionWidget.dart';
import 'package:prac_bkash_app/utilities/spacingWidget.dart';

import 'Body/moreService.dart';

class BodyWidget extends StatelessWidget {
  BodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
            margin: addMargin(5),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 240, 233, 233))),
              child: Column(
                children: [
                  MenusWidget(),
                  MyBkashWidget(),
                  CrouselWidgets(),
                  SuggestionWidget(),
                  OfferWidget(),
                  MoreServices(),
                  BannerWidget(),
                ],
              ),
            )));
  }
}
