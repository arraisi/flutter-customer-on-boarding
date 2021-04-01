import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: non_constant_identifier_names
List<BoxShadow> MainShadow(Color color) {
  return [
    BoxShadow(
      color: color.withOpacity(0.15),
      spreadRadius: 0,
      blurRadius: 5,
      offset: Offset(2, 4), // changes position of shadow
    ),
  ];
}