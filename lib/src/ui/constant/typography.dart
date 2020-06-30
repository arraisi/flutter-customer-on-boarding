import 'package:flutter/material.dart';

Widget headingTextBold({
  @required String text,
  @required Color color,
  TextAlign textAlign = TextAlign.left,
}) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontSize: 50,
      fontWeight: FontWeight.w700,
    ),
    textAlign: textAlign,
  );
}

Widget subtitleTextBold({
  @required String text,
  @required Color color,
  TextAlign textAlign = TextAlign.left,
}) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontSize: 14,
      fontWeight: FontWeight.w700,
    ),
    textAlign: textAlign,
  );
}

Widget buttonText({
  @required String text,
  @required Color color,
  TextAlign textAlign = TextAlign.left,
}) {
  return Text(
    text,
    style: TextStyle(
      color: color,
    ),
    textAlign: textAlign,
  );
}
