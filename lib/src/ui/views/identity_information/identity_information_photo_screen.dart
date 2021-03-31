import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tabeldatafluttertemplate/src/ui/components/main_button.dart';
import 'package:tabeldatafluttertemplate/src/ui/components/main_textfield.dart';
import 'package:tabeldatafluttertemplate/src/utils/app_theme.dart';
import 'package:flutter/services.dart';
import 'package:expandable/expandable.dart';
import 'dart:math' as math;

class IdentityInformationPhotoScreen extends StatefulWidget {
  @override
  _IdentityInformationPhotoScreenState createState() =>
      _IdentityInformationPhotoScreenState();
}

class _IdentityInformationPhotoScreenState
    extends State<IdentityInformationPhotoScreen> {
  final ScrollController _scrollController = ScrollController();
  bool isBackButtonShow = true;

  ExpandableController expandableController1 = new ExpandableController();
  ExpandableController expandableController2 = new ExpandableController();
  ExpandableController expandableController3 = new ExpandableController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    expandableController1.expanded = true;
  }

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
        body: ExpandableTheme(
          data: const ExpandableThemeData(
            iconColor: Colors.blue,
            useInkWell: true,
          ),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: <Widget>[
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
              SizedBox(height: 18),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("Identity Information",
                      style: AppTheme.textTheme.headline),
                  SizedBox(height: 18),
                  Text(
                      "We'll keep this information to open and secure your acoount",
                      style: AppTheme.textTheme.caption),
                  SizedBox(height: 28),
                  Card(expandableController1),
                  SizedBox(
                    height: 24,
                  ),
                  Card2(expandableController2),
                  SizedBox(
                    height: 24,
                  ),
                  Card3(expandableController3),
                  SizedBox(
                    height: 28,
                  ),
                  MainButton("NEXT", (){
                    Navigator.of(context).pushNamed("/branch");
                  }),
                  SizedBox(
                    height: 30,
                  ),
                ],),
              )
            ],
          ),
        ),
      ),
    );
  }

  // fungsi untuk mendeteksi scroll view
  void onScrollListView(t) {
    if (t is UserScrollNotification) {
      print(_scrollController.position.userScrollDirection);
      print(_scrollController.position.pixels);
      setState(() {
        if (_scrollController.position.userScrollDirection ==
            ScrollDirection.reverse) {
          isBackButtonShow = false;
        } else if (t.direction == ScrollDirection.forward) {
          isBackButtonShow = true;
        }
      });
    }
  }
}

// ignore: must_be_immutable
class Card extends StatelessWidget {
  ExpandableController controller;

  Card(ExpandableController expandableController) {
    controller = expandableController;
  }

  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        controller: controller,
        child: ScrollOnExpand(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: AppTheme.mainGreen.withOpacity(0.2),
                  spreadRadius: 0,
                  blurRadius: 5,
                  offset: Offset(2, 4), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: <Widget>[
                ExpandablePanel(
                  theme: const ExpandableThemeData(
                    headerAlignment: ExpandablePanelHeaderAlignment.center,
                    tapBodyToExpand: true,
                    tapBodyToCollapse: true,
                    hasIcon: false,
                  ),
                  header: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Take photo of your KTP",
                              style: AppTheme.textTheme.title,
                            ),
                          ),
                          ExpandableIcon(
                            theme: const ExpandableThemeData(
                              expandIcon: Icons.keyboard_arrow_right,
                              collapseIcon: Icons.keyboard_arrow_down,
                              iconColor: AppTheme.mainGreen,
                              iconSize: 28.0,
                              iconRotationAngle: math.pi / 2,
                              iconPadding: EdgeInsets.only(right: 5),
                              hasIcon: false,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  collapsed: Container(),
                  expanded: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Center(
                            child: Icon(
                          Icons.camera_alt_outlined,
                          size: 100,
                              color: Colors.black38,
                        )),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

// ignore: must_be_immutable
class Card2 extends StatelessWidget {
  ExpandableController controller;

  Card2(ExpandableController expandableController) {
    controller = expandableController;
  }

  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: ScrollOnExpand(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: AppTheme.mainGreen.withOpacity(0.2),
              spreadRadius: 0,
              blurRadius: 5,
              offset: Offset(2, 4), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: <Widget>[
            ExpandablePanel(
              theme: const ExpandableThemeData(
                headerAlignment: ExpandablePanelHeaderAlignment.center,
                tapBodyToExpand: true,
                tapBodyToCollapse: true,
                hasIcon: false,
              ),
              header: Container(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Take selfie with your KTP",
                          style: AppTheme.textTheme.title,
                        ),
                      ),
                      ExpandableIcon(
                        theme: const ExpandableThemeData(
                          expandIcon: Icons.keyboard_arrow_right,
                          collapseIcon: Icons.keyboard_arrow_down,
                          iconColor: AppTheme.mainGreen,
                          iconSize: 28.0,
                          iconRotationAngle: math.pi / 2,
                          iconPadding: EdgeInsets.only(right: 5),
                          hasIcon: false,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              collapsed: Container(),
              expanded: Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Center(
                        child: Icon(
                          Icons.camera_alt_outlined,
                          size: 100,
                          color: Colors.black38,
                        )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

// ignore: must_be_immutable
class Card3 extends StatelessWidget {
  ExpandableController controller;

  Card3(ExpandableController expandableController) {
    controller = expandableController;
  }

  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: ScrollOnExpand(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: AppTheme.mainGreen.withOpacity(0.2),
              spreadRadius: 0,
              blurRadius: 5,
              offset: Offset(2, 4), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: <Widget>[
            ExpandablePanel(
              theme: const ExpandableThemeData(
                headerAlignment: ExpandablePanelHeaderAlignment.center,
                tapBodyToExpand: true,
                tapBodyToCollapse: true,
                hasIcon: false,
              ),
              header: Container(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Take selfie with your NPWP",
                          style: AppTheme.textTheme.title,
                        ),
                      ),
                      ExpandableIcon(
                        theme: const ExpandableThemeData(
                          expandIcon: Icons.keyboard_arrow_right,
                          collapseIcon: Icons.keyboard_arrow_down,
                          iconColor: AppTheme.mainGreen,
                          iconSize: 28.0,
                          iconRotationAngle: math.pi / 2,
                          iconPadding: EdgeInsets.only(right: 5),
                          hasIcon: false,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              collapsed: Container(),
              expanded: Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Center(
                        child: Icon(
                          Icons.camera_alt_outlined,
                          size: 100,
                          color: Colors.black38,
                        )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
