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
EdgeInsets addPaddingTop(double padding) {
  return EdgeInsets.only(top:padding);
}
EdgeInsets addPaddingBottom(double padding) {
  return EdgeInsets.only(bottom:padding);
}
EdgeInsets addPaddingLeft(double padding) {
  return EdgeInsets.only(left:padding);
}
EdgeInsets addPaddingRight(double padding) {
  return EdgeInsets.only(right:padding);
}



EdgeInsets addMargin(double margin) {
  return EdgeInsets.all(margin);
}
EdgeInsets addMarginTop(double margin) {
  return EdgeInsets.only(top:margin);
}
EdgeInsets addMarginBottom(double margin) {
  return EdgeInsets.only(bottom:margin);
}
EdgeInsets addMarginLeft(double margin) {
  return EdgeInsets.only(left:margin);
}
EdgeInsets addMarginRight(double margin) {
  return EdgeInsets.only(right:margin);
}
