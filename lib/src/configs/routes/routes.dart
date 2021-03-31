import 'package:flutter/material.dart';
import 'package:tabeldatafluttertemplate/src/ui/constant/constant.dart';
import 'package:tabeldatafluttertemplate/src/ui/views/branch/branch_screen.dart';
import 'package:tabeldatafluttertemplate/src/ui/views/example_screen/example.dart';
import 'package:tabeldatafluttertemplate/src/ui/views/identity_information/identity_informartion_form_screen.dart';
import 'package:tabeldatafluttertemplate/src/ui/views/identity_information/identity_information_photo_screen.dart';
import 'package:tabeldatafluttertemplate/src/ui/views/login/login_screen.dart';

class Routes {
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginScreen:
        return MaterialPageRoute(builder: (_) => LoginScreen());
        break;
      case identityInformationForm:
        return MaterialPageRoute(builder: (_) => IdentityInformationFormScreen());
        break;
      case identityInformationPhoto:
        return MaterialPageRoute(builder: (_) => IdentityInformationPhotoScreen());
        break;
      case branch:
        return MaterialPageRoute(builder: (_) => BranchScreen());
        break;
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