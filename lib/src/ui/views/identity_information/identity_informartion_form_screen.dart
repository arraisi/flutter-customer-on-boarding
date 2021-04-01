import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tabeldatafluttertemplate/src/ui/components/main_button.dart';
import 'package:tabeldatafluttertemplate/src/ui/components/main_textfield.dart';
import 'package:tabeldatafluttertemplate/src/utils/app_theme.dart';

class IdentityInformationFormScreen extends StatefulWidget {
  @override
  _IdentityInformationFormScreenState createState() =>
      _IdentityInformationFormScreenState();
}

class _IdentityInformationFormScreenState
    extends State<IdentityInformationFormScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: true,
      child: Scaffold(
        body: ListView(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 16),
                  child: Center(
                      child: SvgPicture.asset(
                    'assets/images/icon_hiring.svg',
                    height: 180.94,
                  )),
                ),
                Container(
                  padding: EdgeInsets.only(left: 30, top: 28, right: 30, bottom: 16),
                  alignment: Alignment.centerLeft,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Identity Information",
                            style: AppTheme.textTheme.headline),
                        SizedBox(height: 20),
                        Text(
                            "We'll keep this information to open and secure your acoount",
                            style: AppTheme.textTheme.subtitle),
                        SizedBox(height: 28),
                        MainTextField(
                            Icons.person_outline_rounded, "Full Name"),
                        SizedBox(height: 18),
                        MainTextField(
                            Icons.location_on_outlined, "Place of Birth"),
                        SizedBox(height: 18),
                        MainTextField(
                            Icons.calendar_today_rounded, "Date of Birth"),
                        SizedBox(height: 18),
                        MainTextField(Icons.wc_outlined, "Gender"),
                        SizedBox(height: 18),
                        MainTextField(
                            Icons.credit_card_rounded, "KTP Number"),
                        SizedBox(height: 24),
                        MainButton("NEXT", () {
                          // _scrollController.animateTo(
                          //     _scrollController.position.minScrollExtent,
                          //     duration: Duration(milliseconds: 300),
                          //     curve: Curves.fastOutSlowIn);
                          Navigator.of(context)
                              .pushNamed("/identity-information-photo");
                        }),
                        SizedBox(height: 28),
                      ]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

// void onScrollListView(t) {
//   if (t is UserScrollNotification) {
//     print(_scrollController.position.userScrollDirection);
//     print(_scrollController.position.pixels);
//     setState(() {
//       if (_scrollController.position.userScrollDirection ==
//           ScrollDirection.reverse) {
//         isBackButtonShow = false;
//       } else if (t.direction == ScrollDirection.forward) {
//         isBackButtonShow = true;
//       }
//     });
//   }
// }
}
