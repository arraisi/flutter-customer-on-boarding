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
    return SafeArea(
      top: true,
      bottom: true,
      left: true,
      right: true,
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 30),
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
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed("/identity-information-form");
                      },
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
    );
  }
}
