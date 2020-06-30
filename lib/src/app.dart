import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:tabeldatafluttertemplate/src/configs/routes/routes.dart';
import 'package:tabeldatafluttertemplate/src/ui/constant/constant.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      theme: ThemeData(fontFamily: 'Poppins'),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      initialRoute: examplePage,
      onGenerateRoute: Routes().onGenerateRoute,
    );
  }
}
