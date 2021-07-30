import 'package:flutter/material.dart';
import 'package:flutter_catalog/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // bool isMale = true;
    // num temp = 30.5; //num takes both int as well as double
    // var day = "Tuesday"; // We can assign any data type only at the time of initialization
    // const pi = 3.14; // cannnot be reassigned
    // double daysInDouble = 30;
    return MaterialApp(
      home: HomePage(),
      );
  }
}
