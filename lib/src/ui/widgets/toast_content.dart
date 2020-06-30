import 'package:flutter/material.dart';

void showToast(BuildContext context, {@required String title, @required Color color}) {
  final scaffold = Scaffold.of(context);
  scaffold.showSnackBar(
    SnackBar(
      content: Text(title),
      elevation: 1,
      backgroundColor: color,
      behavior: SnackBarBehavior.floating,
      duration: Duration(
          seconds: 2
      ),
    ),
  );
}
