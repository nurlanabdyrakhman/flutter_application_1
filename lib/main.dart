import 'package:flutter/material.dart';
import 'package:flutter_application_1/nurlan.dart';
import 'package:flutter_application_1/screens/bmi_screen.dart';
import 'package:flutter_application_1/screens/bmi_screen_2.dart';
import 'package:flutter_application_1/screens/rich_screen.dart';
import 'package:flutter_application_1/screens/true_false_screen.dart';
import 'package:flutter_application_1/screens/xylo_screen.dart';

//import 'first_page.dart';

void main() {
  runApp(MeninTirkemem());
}

class MeninTirkemem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        // scaffoldBackgroundColor: Colors.purple,
        primaryColor: Color(0xFF0e0b21),
        scaffoldBackgroundColor: Color(0xFF0e0b21),
      ),
      home: XyloScreen(),
    );
  }
}
