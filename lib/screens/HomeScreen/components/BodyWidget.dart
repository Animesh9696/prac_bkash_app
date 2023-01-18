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
        child: Container(
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
                            color: Color.fromARGB(255, 226, 222, 222)
                          ),
                          boxShadow: List.empty()),
                      width: 70,
                      child: _isVisible ? buttonCard1() : buttonCard2(),
                    )),
              )
            ],
          ),
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

class $a {}

// class BodyWidget extends StatelessWidget {
//   BodyWidget({
//     Key? key,
//   }) : super(key: key);

//   List<String> images = [
//     "assets/images/mobile_recharge.jpg",
//     "assets/images/mobile_recharge.jpg",
//     "assets/images/mobile_recharge.jpg",
//     "assets/images/mobile_recharge.jpg",
//     "assets/images/mobile_recharge.jpg",
//   ];

//   List<String> titles = [
//     "My Offer",
//     "My Offer",
//     "My Offer",
//     "My Offer",
//     "My Offer",
//   ];

//   late bool _isVisible = true;

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//         physics: const BouncingScrollPhysics(),
//         child: Container(
//           margin: addMargin(5),
//           child: Stack(
//             children: [
//               Container(
//                 child: MenusWidget(),
//               ),
//               Visibility(
//                   visible: _isVisible,
//                   child: Container(
//                     color: Colors.white,
//                     height: 50,
//                     child: Text("Hello"),
//                   )),
//               GestureDetector(
//                 onTap: () {
//                   _isVisible = false;
//                 },
//                 child: Icon(
//                     _isVisible ? Icons.arrow_upward : Icons.arrow_downward),
//               )
//             ],
//           ),
//         ));
//   }
// }
