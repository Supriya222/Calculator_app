import 'package:flutter/material.dart';

import '../model/data.dart';

class Calculate extends ChangeNotifier {
  //Data obj = new Data();
  Data _info = Data();
  Data get info => _info;

  void remove() {
    info.result = info.result.substring(0, info.result.length - 1);
    notifyListeners();
  }

  void concat(String num) {
    //int count=0;
    if (info.result == '0') {
      info.result = num;
      notifyListeners();
    } else if (num == 'C') {
      info.result = '0';
      notifyListeners();
    } else
    //  if (num == '%' ||
    //     num == '/' ||
    //     num == '+' ||
    //     num == '-' ||
    //     num == 'X')
    {
      info.result = info.result + num;
      // count = count + 1;
      notifyListeners();
    }

    //info.result = info.result + num;
  }

  void operation(String input) {
    int idx;
    double operand1;
    double operand2;

    if (input.contains('+')) {
      // int ind = input.indexOf("+");
      // operand1 = input.replaceRange(ind, input.length - 1, '');
      idx = input.indexOf("+");
      operand1 = double.parse(input.substring(0, idx).trim());
      operand2 =
          double.parse(input.substring(idx + 1, input.length - 1).trim());
      //oper = input.substring(idx);

      info.result = (operand1 + operand2).toString();
      notifyListeners();
    } else if (input.contains('-')) {
      // int ind = input.indexOf("+");
      // operand1 = input.replaceRange(ind, input.length - 1, '');
      int idx = input.indexOf("-");
      operand1 = double.parse(input.substring(0, idx).trim());
      operand2 =
          double.parse(input.substring(idx + 1, input.length - 1).trim());
      //oper = input.substring(idx);

      info.result = (operand1 - operand2).toString();
      notifyListeners();
    } else if (input.contains('X')) {
      // int ind = input.indexOf("+");
      // operand1 = input.replaceRange(ind, input.length - 1, '');
      int idx = input.indexOf("X");
      operand1 = double.parse(input.substring(0, idx).trim());
      operand2 =
          double.parse(input.substring(idx + 1, input.length - 1).trim());
      // oper = input.substring(idx);

      info.result = (operand1 * operand2).toString();
      notifyListeners();
    } else if (input.contains('/')) {
      // int ind = input.indexOf("+");
      // operand1 = input.replaceRange(ind, input.length - 1, '');
      int idx = input.indexOf("/");
      operand1 = double.parse(input.substring(0, idx).trim());
      operand2 =
          double.parse(input.substring(idx + 1, input.length - 1).trim());
      //oper = input.substring(idx);

      info.result = (operand1 / operand2).toString();
      notifyListeners();
    }
    if (input.contains('%')) {
      // int ind = input.indexOf("+");
      // operand1 = input.replaceRange(ind, input.length - 1, '');
      int idx = input.indexOf("%");
      operand1 = double.parse(input.substring(0, idx).trim());
      operand2 =
          double.parse(input.substring(idx + 1, input.length - 1).trim());
      //oper = input.substring(idx);

      info.result = (operand1 % operand2).toString();
      notifyListeners();
    } else if (input.contains('C')) {
      info.result = '0';
      notifyListeners();
    } else if (input.contains('x')) {
      info.result = null;
    }
  }
}
