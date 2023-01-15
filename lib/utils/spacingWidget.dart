import 'package:flutter/material.dart';

Widget addVerticalSpace(double height) {
  return SizedBox(
    height: height,
  );
}

Widget addHorizontalSpace(double width) {
  return SizedBox(
    width: width,
  );
}

EdgeInsets addPadding(double padding) {
  return EdgeInsets.all(padding);
}

EdgeInsets addMargin(double margin) {
  return EdgeInsets.all(margin);
}
