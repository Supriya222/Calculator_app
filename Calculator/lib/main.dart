import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './view/calculator_app.dart';
import './provider/calculate.dart';

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
