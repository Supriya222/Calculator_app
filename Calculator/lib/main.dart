import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './view/calculator_app.dart';
import './provider/calculate.dart';

// Created a simple calculator app (using MVP model in flutter), that can only perform any one of the operation(from +,-,/,*,%)
//in a single line at one time . Working on performing multiple operation in same line at a time.
void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (_) => Calculate(),
      )
    ], child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      home: CalculatorApp(),
    );
  }
}
