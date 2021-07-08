import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/calculate.dart';

class KeyDesign extends StatelessWidget {
  final int index;
  const KeyDesign({this.index});
  @override
  Widget build(BuildContext context) {
    //Data obj = new Data();
    return (index != 2)
        ? Consumer<Calculate>(
            builder: (context, calculate, child) {
              return InkWell(
                hoverColor: Theme.of(context).primaryColorLight,
                radius: 30,
                onTap: () {
                  //print(index);
                  calculate.concat(calculate.info.inputData[index]);
                  if (calculate.info.inputData[index] == '=') {
                    calculate.operation(calculate.info.result);
                  }
                },
                child: ClipRRect(
                  //Look at ClipRRect to make buttons slightly circular at their ends

                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                      // color: (index == 3 ||
                      //         index == 7 ||
                      //         index == 11 ||
                      //         index == 15 ||
                      //         index == 19)
                      //     ? Colors.indigo[300]
                      //     : null,
                      child: Center(
                          child: Text(calculate.info.inputData[index],
                              style: TextStyle(fontSize: 30)))),
                ),
              );
            },
          )
        : Consumer<Calculate>(
            builder: (context, value, child) {
              return InkWell(
                splashColor: Theme.of(context).primaryColorLight,
                onTap: () {
                  //print(index);
                  value.remove();
                },
                child: Container(
                    child: Center(
                        child: CircleAvatar(
                  child: Text(value.info.inputData[index],
                      style: TextStyle(fontSize: 30)),
                ))),
              );
            },
          );
  }
}
