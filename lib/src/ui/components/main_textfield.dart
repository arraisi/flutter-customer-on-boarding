import 'package:flutter/material.dart';
import 'package:tabeldatafluttertemplate/src/utils/app_theme.dart';

// ignore: non_constant_identifier_names
Container MainTextField(IconData icon, String placeHolder) {
  return Container(
    // alignment: Alignment.center,
    height: 45,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(15)),
      boxShadow: [
        BoxShadow(
          color: AppTheme.mainGreen.withOpacity(0.1),
          spreadRadius: 0,
          blurRadius: 5,
          offset: Offset(2, 4), // changes position of shadow
        ),
      ],
    ),
    child: TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: InputBorder.none,
          hintText: placeHolder,
          hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black.withOpacity(0.2)),
          contentPadding: EdgeInsets.only(top: 10),
          prefixIcon: Icon(icon, color: AppTheme.mainGreen, size: 24.0)),
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
    ),
  );
}
