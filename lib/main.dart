import 'package:flutter/material.dart';
import 'package:hussien/details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Payroll Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EnterDetailsScreen(),
    );
  }
}
