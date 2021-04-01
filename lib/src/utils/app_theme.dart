import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color mainWhite = Color(0xFFFAFAFA);
  static const Color mainOrange = Color(0xFFFF6D00);
  static const Color secondaryOrange = Color(0xFFFF9100);
  static const Color mainGreen = Color(0xFF1B5E20);
  static const Color secondaryGreen = Color(0xFF2E7D32);
  static const Color mainDark = Color(0xFF212121);
  static const Color secondaryDark = Color(0xFF9E9E9E);

  static const String fontName = 'Open-Sans';
  static const String montserrat = 'Montserrat';
  static const String comfortaFont = 'Comfortaa';

  static const TextTheme textTheme = TextTheme(
    headline: headline,
    title: title,
    subtitle: subtitle,
    caption: caption,
    body1: body
  );

  static const TextStyle headline = TextStyle(
    // h5 -> headline
    fontFamily: montserrat,
    fontWeight: FontWeight.w700,
    fontSize: 20,
    // letterSpacing: 0.27,
    color: mainGreen,
  );

  static const TextStyle title = TextStyle(
    // h6 -> title
    fontFamily: montserrat,
    fontWeight: FontWeight.w700,
    fontSize: 16,
    // letterSpacing: 0.18,
    color: mainGreen,
  );

  static const TextStyle subtitle = TextStyle(
    // h6 -> title
    fontFamily: montserrat,
    fontWeight: FontWeight.w600,
    fontSize: 16,
    // letterSpacing: 0.18,
    color: mainDark,
  );

  static const TextStyle body = TextStyle(
    fontFamily: montserrat,
    fontWeight: FontWeight.w500,
    fontSize: 14,
    // letterSpacing: 0.18,
    color: mainDark,
  );

  static const TextStyle placeHolder = TextStyle(
    fontFamily: montserrat,
    fontWeight: FontWeight.w500,
    fontSize: 14,
    // letterSpacing: 0.18,
    color: mainDark,
  );

  static const TextStyle textButton = TextStyle(
    // Caption -> caption
    fontFamily: montserrat,
    fontWeight: FontWeight.w700,
    fontSize: 14,
    // letterSpacing: 0.2,
    color: mainWhite, // was lightText
  );

  static const TextStyle caption = TextStyle(
    // Caption -> caption
    fontFamily: montserrat,
    fontWeight: FontWeight.w600,
    fontSize: 12,
    // letterSpacing: 0.2,
    // color: nearlyWhite, // was lightText
  );

  static const TextStyle overline = TextStyle(
    // Caption -> caption
    fontFamily: montserrat,
    fontWeight: FontWeight.w500,
    fontSize: 10,
    // letterSpacing: 0.2,
    // color: nearlyWhite, // was lightText
  );

}
