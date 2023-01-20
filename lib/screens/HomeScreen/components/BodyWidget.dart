import 'package:flutter/material.dart';
import 'package:prac_bkash_app/screens/HomeScreen/components/Body/bannerWidget.dart';
import 'package:prac_bkash_app/screens/HomeScreen/components/Body/crouselWidget.dart';
import 'package:prac_bkash_app/screens/HomeScreen/components/Body/menusWidget.dart';
import 'package:prac_bkash_app/screens/HomeScreen/components/Body/myBkashWidget.dart';
import 'package:prac_bkash_app/screens/HomeScreen/components/Body/offerWidget.dart';
import 'package:prac_bkash_app/screens/HomeScreen/components/Body/suggestionWidget.dart';
import 'package:prac_bkash_app/utilities/constants.dart';
import 'package:prac_bkash_app/utilities/spacingWidget.dart';

import '../../../widgets/card.dart';

class BodyWidget extends StatefulWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  _BodyWidgetState createState() => _BodyWidgetState();
}

bool _isVisible = true;

class _BodyWidgetState extends State<BodyWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              margin: addMargin(5),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    margin: addMarginBottom(14),
                    child: MenusWidget(),
                  ),
                  Container(
                    child: Visibility(
                        visible: _isVisible,
                        child: Opacity(
                          opacity: 0.84,
                          child: Container(
                              color: Colors.white,
                              height: 130,
                              width: double.infinity),
                        )),
                  ),
                  Container(
                    child: GestureDetector(
                        onTap: () => {
                              setState(() {
                                if (_isVisible) {
                                  _isVisible = false;
                                } else {
                                  _isVisible = true;
                                }
                              })
                            },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  color: Color.fromARGB(255, 226, 222, 222)),
                              boxShadow: List.empty()),
                          width: 70,
                          child: _isVisible ? buttonCard1() : buttonCard2(),
                        )),
                  )
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    useRootNavigator: true,
                    isScrollControlled: true,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(15.0),
                      ),
                    ),
                    context: context,
                    builder: (contex) {
                      return SizedBox(
                        height: 350,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(
                                  10),
                                  margin: EdgeInsets.only(left: 5,right: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Suggestions"),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      "Close",
                                      style: TextStyle(color: primaryColor),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                                child: GridView.builder(
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                    ),
                                    itemBuilder: (context, int index) {
                                      return CardWidget(
                                          title: "Send Money", image: "assets/images/card_bill.jpg");
                                    }))
                          ],
                        ),
                      );
                    });
              },
              child: Text("Click"),
            )
          ],
        ));
  }

  Widget buttonCard1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Open"),
        Icon(Icons.arrow_downward),
      ],
    );
  }

  Widget buttonCard2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Close"),
        Icon(Icons.arrow_upward),
      ],
    );
  }
}
