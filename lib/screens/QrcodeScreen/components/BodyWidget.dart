import 'package:flutter/material.dart';
import 'package:prac_bkash_app/utils/spacingWidget.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: addMargin(15),
      height: double.infinity,
      width: double.infinity,
      color: Colors.white,
      child: Card(
        elevation: 15,
        child: Container(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                height: 400,
                width: 400,
                child: Image.asset("assets/images/qr_code.png")),
            
            addVerticalSpace(5.0),
            Container(
              width: 170,
              padding: addPadding(8.0),
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.download,color: Colors.white,),
                  addHorizontalSpace(5.0),
                  Text("Download")
                ],
              ),
            )
          ],
              ),
        ),
      )
    );
  }
}
