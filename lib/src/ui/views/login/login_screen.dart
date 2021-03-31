import 'package:flutter/material.dart';
import 'package:tabeldatafluttertemplate/src/utils/app_theme.dart';
import 'package:tabeldatafluttertemplate/src/ui/components/main_textfield.dart';
import 'package:tabeldatafluttertemplate/src/ui/components/main_button.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        // For Android.
        // Use [light] for white status bar and [dark] for black status bar.
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
        // For iOS.
        // Use [dark] for white status bar and [light] for black status bar.
        statusBarBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body: SafeArea(
          top: true,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome to,",
                  style: AppTheme.textTheme.headline,
                ),
                SizedBox(height: 10),
                Container(
                    height: 58.67,
                    child: Image.asset('assets/images/logo_bank_bengkulu.png')),
                Spacer(),
                Text(
                  "Login",
                  style: AppTheme.textTheme.headline,
                ),
                SizedBox(height: 28),
                MainTextField(Icons.mail_outline_rounded, "Mail"),
                SizedBox(height: 18),
                MainTextField(Icons.lock_open_rounded, "Password"),
                SizedBox(height: 28),
                MainButton("LOGIN", () {
                  print("Hello world");
                  Navigator.of(context).pushNamed("/identity-information-form");
                }),
                Spacer(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "New to Bank Bengkulu?",
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Register",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: AppTheme.mainGreen),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
