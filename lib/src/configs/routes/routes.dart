import 'package:flutter/material.dart';
import 'package:tabeldatafluttertemplate/src/ui/constant/constant.dart';
import 'package:tabeldatafluttertemplate/src/ui/views/example_screen/example.dart';

class Routes {
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case examplePage:
        return MaterialPageRoute(builder: (_) => ExampleScreen());
      break;
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text("404 Not Found"),
            ),
          ),
        );
    }
  }
}