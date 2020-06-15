import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutterappfinalscalculator/numKeyButton.dart';

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  String lastValue = "0";
  String inputString = "";
  String numberStr = "0";
  String lastOpr = "";
  bool reset;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final height = ((mediaQuery.size.height * .66) / 5) - 10;
    final width = (mediaQuery.size.width / 4) - (50 / 4);
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
                height: mediaQuery.size.height * .30,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Text(inputString, style: TextStyle(fontSize: 48)),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      numberStr,
                      style: TextStyle(fontSize: 48),
                    ),
                  ],
                )),
            Row(
              children: <Widget>[
                SizedBox(
                  height: height,
                  width: width,
                  child: NumKeyButton(
                    text: 'C',
                    color: Colors.white,
                    onPressed: _clear,
                    borderRadius: 5.0,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: height,
                  width: width,
                  child: NumKeyButton(
                    text: 'CE',
                    color: Colors.white,
                    onPressed: _clearEntry,
                    borderRadius: 5.0,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: height,
                  width: ((mediaQuery.size.width / 4) * 2) - (50 / 3),
                  child: NumKeyButton(
                    text: '=',
                    color: Colors.white,
                    onPressed: () {},
                    borderRadius: 5.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 14.0,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  height: height,
                  width: width,
                  child: NumKeyButton(
                    text: '7',
                    color: Colors.white,
                    onPressed: () {
                      _setNumber(7);
                    },
                    borderRadius: 5.0,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: height,
                  width: width,
                  child: NumKeyButton(
                    text: '8',
                    color: Colors.white,
                    onPressed: () {
                      _setNumber(8);
                    },
                    borderRadius: 5.0,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: height,
                  width: width,
                  child: NumKeyButton(
                    text: '9',
                    color: Colors.white,
                    onPressed: () {
                      _setNumber(9);
                    },
                    borderRadius: 5.0,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: height,
                  width: width,
                  child: NumKeyButton(
                    text: '/',
                    color: Colors.white,
                    onPressed: _divide,
                    borderRadius: 5.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 14.0,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  height: height,
                  width: width,
                  child: NumKeyButton(
                    text: '4',
                    color: Colors.white,
                    onPressed: () {
                      _setNumber(4);
                    },
                    borderRadius: 5.0,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: height,
                  width: width,
                  child: NumKeyButton(
                    text: '5',
                    color: Colors.white,
                    onPressed: () {
                      _setNumber(5);
                    },
                    borderRadius: 5.0,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: height,
                  width: width,
                  child: NumKeyButton(
                    text: '6',
                    color: Colors.white,
                    onPressed: () {
                      _setNumber(6);
                    },
                    borderRadius: 5.0,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: height,
                  width: width,
                  child: NumKeyButton(
                    text: 'X',
                    color: Colors.white,
                    onPressed: _multiply,
                    borderRadius: 5.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 14.0,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  height: height,
                  width: width,
                  child: NumKeyButton(
                    text: '1',
                    color: Colors.white,
                    onPressed: () {
                      _setNumber(1);
                    },
                    borderRadius: 5.0,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: height,
                  width: width,
                  child: NumKeyButton(
                    text: '2',
                    color: Colors.white,
                    onPressed: () {
                      _setNumber(2);
                    },
                    borderRadius: 5.0,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: height,
                  width: width,
                  child: NumKeyButton(
                    text: '3',
                    color: Colors.white,
                    onPressed: () {
                      _setNumber(3);
                    },
                    borderRadius: 5.0,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: height,
                  width: width,
                  child: NumKeyButton(
                    text: '-',
                    color: Colors.white,
                    onPressed: _subtract,
                    borderRadius: 5.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 14.0,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  height: height,
                  width: ((mediaQuery.size.width / 4) * 2) - (50 / 3),
                  child: NumKeyButton(
                    text: '0',
                    color: Colors.white,
                    onPressed: () {
                      _setNumber(0);
                    },
                    borderRadius: 5.0,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: height,
                  width: width,
                  child: NumKeyButton(
                    text: '.',
                    color: Colors.white,
                    onPressed: _setDecimal,
                    borderRadius: 5.0,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: height,
                  width: width,
                  child: NumKeyButton(
                    text: '+',
                    color: Colors.white,
                    onPressed: _add,
                    borderRadius: 5.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _setNumber(int number) {
    setState(() {
      if (this.numberStr == "0" || reset) {
        this.numberStr = "";
        reset = false;
      }
      this.numberStr += number.toString();
    });
  }

  void _clearEntry() {
    setState(() {
      this.numberStr = "0";
    });
  }

  void _clear() {
    setState(() {
      this.numberStr = "0";
      this.lastValue = "0";
      this.inputString = "";
      this.lastOpr = "";
    });
  }

  void _setDecimal() {
    if (!numberStr.contains(".")) {
      setState(() {
        this.numberStr += ".";
      });
    }
  }

  void _add() {
    setState(() {
      _performOperation('+');
    });
  }

  void _subtract() {
    setState(() {
      _performOperation('-');
    });
  }

  void _divide() {
    setState(() {
      _performOperation('/');
    });
  }

  void _multiply() {
    setState(() {
      _performOperation('*');
    });
  }

  void _performOperation(String opr) {
    if (lastOpr == "" || lastOpr == opr) {
      final lastValueNum = double.parse(lastValue);
      final number = double.parse(numberStr);
      switch (opr) {
        case '+':
          lastValue = (lastValueNum + number).toString();
          break;
        case '-':
          lastValue = (lastValueNum - number).toString();
          break;
        case '/':
          lastValue = (lastValueNum / number).toString();
          break;
        case '*':
          lastValue = (lastValueNum * number).toString();
          break;
      }
      inputString += '$numberStr $opr';
    }
    lastOpr = opr;
    reset = true;
    numberStr = lastValue;
    inputString = '${inputString.substring(0, inputString.length - 1)}$opr';
  }
}
