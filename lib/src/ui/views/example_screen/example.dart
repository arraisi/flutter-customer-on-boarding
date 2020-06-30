import 'package:flutter/material.dart';
import 'package:tabeldatafluttertemplate/src/ui/constant/constant.dart';

class ExampleScreen extends StatefulWidget {
  @override
  _ExampleScreenState createState() => _ExampleScreenState();
}

class _ExampleScreenState extends State<ExampleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(appName),
      ),
    );
  }
}
