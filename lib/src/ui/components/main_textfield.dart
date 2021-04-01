import 'package:flutter/material.dart';
import 'package:tabeldatafluttertemplate/src/ui/components/main_shadow.dart';
import 'package:tabeldatafluttertemplate/src/utils/app_theme.dart';

// ignore: must_be_immutable
class MainTextField extends StatelessWidget {
  IconData icon;
  String placeHolder;

  MainTextField(IconData icon, String placeHolder) {
    this.icon = icon;
    this.placeHolder = placeHolder;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.center,
      height: 45,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
        boxShadow: MainShadow(AppTheme.mainGreen),
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
            contentPadding: EdgeInsets.only(top: 12),
            prefixIcon: Icon(icon, color: AppTheme.mainGreen, size: 24.0)),
        style: AppTheme.textTheme.body1,
      ),
    );
  }
}
