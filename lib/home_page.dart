import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final int days = 30;
  final String name = "Code";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ), // App header
      body: Center(
        child: Container(
          child: Text('Welcome to $days of flutter by $name'),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
