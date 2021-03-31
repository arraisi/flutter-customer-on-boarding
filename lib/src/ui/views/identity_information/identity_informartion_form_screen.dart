import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tabeldatafluttertemplate/src/ui/components/main_button.dart';
import 'package:tabeldatafluttertemplate/src/ui/components/main_textfield.dart';
import 'package:tabeldatafluttertemplate/src/utils/app_theme.dart';
import 'package:flutter/services.dart';

class IdentityInformationFormScreen extends StatefulWidget {
  @override
  _IdentityInformationFormScreenState createState() =>
      _IdentityInformationFormScreenState();
}

class NewItem {
  bool isExpanded;
  final String header;
  final Widget body;
  final Icon iconpic;

  NewItem(this.isExpanded, this.header, this.body, this.iconpic);
}

class _IdentityInformationFormScreenState
    extends State<IdentityInformationFormScreen> {
  final ScrollController _scrollController = ScrollController();
  bool isBackButtonShow = true;

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
        // backgroundColor: Color(0xFFEFF4F7),
        body: NotificationListener(
          // ignore: missing_return
          onNotification: (t) {
            // onScrollListView(t);
          },

          child: ListView(
            controller: _scrollController,
            children: [
              // Row(
              //   children: [
              //     Opacity(
              //       opacity: isBackButtonShow ? 1 : 0,
              //       child: AnimatedContainer(
              //         child: IconButton(
              //           icon: Icon(Icons.arrow_back_ios_rounded),
              //           onPressed: () {
              //             Navigator.pop(context);
              //           },
              //         ),
              //         duration: Duration(milliseconds: 500),
              //         curve: Curves.easeInOut,
              //       ),
              //     ),
              //   ],
              // ),
              Column(
                children: [
                  Center(
                      child: SvgPicture.asset(
                    'assets/images/icon_hiring.svg',
                    height: 180.94,
                  )),
                  Container(
                    padding: EdgeInsets.only(top: 28, left: 30, right: 30),
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
                              style: AppTheme.textTheme.caption),
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
