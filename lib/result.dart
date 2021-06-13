import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final resultScore;

  Result(this.resultScore);

  String get resultText {
    return (resultScore > 1 ? "Awesome" : "Bad");
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultText,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
