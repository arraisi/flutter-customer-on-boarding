import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tabeldatafluttertemplate/src/ui/components/main_button.dart';
import 'package:tabeldatafluttertemplate/src/ui/components/main_shadow.dart';
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
    return SafeArea(
      top: false,
      bottom: true,
      child: Scaffold(
        body: ExpandableTheme(
          data: const ExpandableThemeData(
            iconColor: Colors.blue,
            useInkWell: true,
          ),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Identity Information",
                        style: AppTheme.textTheme.headline),
                    SizedBox(height: 18),
                    Text(
                        "We'll keep this information to open and secure your acoount",
                        style: AppTheme.textTheme.subtitle),
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
                    MainButton("NEXT", () {
                      Navigator.of(context).pushNamed("/branch");
                    }),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
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
              boxShadow: MainShadow(AppTheme.mainGreen),
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
          boxShadow: MainShadow(AppTheme.mainGreen),
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
          boxShadow: MainShadow(AppTheme.mainGreen),
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
