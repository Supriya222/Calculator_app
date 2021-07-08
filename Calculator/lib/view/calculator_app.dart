import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/key_design.dart';
import '../provider/calculate.dart';

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Calculator"),
          centerTitle: true,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: double.infinity,
                color: Colors.black,
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.2 - 70),
                child: Consumer<Calculate>(builder: (context, cal, child) {
                  return Text(cal.info.result,
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.right);
                }),
              ),
              Expanded(
                child: Container(
                    //color: Colors.white,
                    child: GridView.count(
                  crossAxisCount: 4,
                  children: [
                    KeyDesign(index: 0),
                    KeyDesign(index: 1),
                    KeyDesign(index: 2),
                    KeyDesign(index: 3),
                    KeyDesign(index: 4),
                    KeyDesign(index: 5),
                    KeyDesign(index: 6),
                    KeyDesign(index: 7),
                    KeyDesign(index: 8),
                    KeyDesign(index: 9),
                    KeyDesign(index: 10),
                    KeyDesign(index: 11),
                    KeyDesign(index: 12),
                    KeyDesign(index: 13),
                    KeyDesign(index: 14),
                    KeyDesign(index: 15),
                    KeyDesign(index: 16),
                    KeyDesign(index: 17),
                    KeyDesign(index: 18),
                    KeyDesign(index: 19),
                  ],
                )
                    // Column(children: [
                    //   Row(children: [

                    //   ],),
                    //   Row(children: [],),
                    //   Row(children: [],),
                    //   Row(children: [],),
                    //   Row(children: [],),
                    // ],)
                    ),
              ),
            ],
          ),
        ));
  }
}
