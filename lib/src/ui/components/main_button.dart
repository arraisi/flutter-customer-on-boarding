import 'package:flutter/material.dart';
import 'package:tabeldatafluttertemplate/src/ui/components/main_shadow.dart';
import 'package:tabeldatafluttertemplate/src/utils/app_theme.dart';

// ignore: non_constant_identifier_names
SizedBox MainButton(String label, VoidCallback onPressed) {
  return SizedBox(
    height: 45,
    width: double.infinity,
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
        boxShadow: MainShadow(AppTheme.mainOrange),
      ),
      // ignore: deprecated_member_use
      child: FlatButton(
        onPressed: onPressed,
        color: AppTheme.mainOrange,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: Text(label, style: AppTheme.textButton),
      ),
    ),
  );
}
