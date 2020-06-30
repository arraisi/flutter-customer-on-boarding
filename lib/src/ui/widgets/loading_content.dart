import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void onLoading(BuildContext context) {
  WidgetsBinding.instance.addPostFrameCallback((_) async {
    await showGeneralDialog(
        barrierColor: Colors.grey.withOpacity(0.3),
        context: context,
        barrierLabel: '',
        barrierDismissible: false,
        transitionDuration: Duration(milliseconds: 1000),
        transitionBuilder: (context, a1, a2, widget) {
          return SpinKitPulse(
            size: 60,
            color: Colors.grey,
          );
        },
        pageBuilder: (context, animation1, animation2) {});
  });
}
