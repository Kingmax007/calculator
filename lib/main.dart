import 'package:flutter/material.dart';





void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter basic calculator',
      home: Calculation(),
    );
  }
}
class Calculation extends StatefulWidget {
  @override
  _CalculationState createState() => _CalculationState();
}

class _CalculationState extends State<Calculation> {
  @override
  Widget build(BuildContext context) {
    return ResultDisplay(text: '0');
  }
}
class ResultDisplay extends StatelessWidget {
  ResultDisplay({required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      color: Colors.black,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 34,
        ),
      ),
    );
  }
}
