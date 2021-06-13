import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final resultScore, resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultText {
    return (resultScore > 1 ? "Awesome" : "Bad");
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultText,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: resetHandler,
            child: Text("Reset Quiz"),
            style: ElevatedButton.styleFrom(
                primary: Colors.amber,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
          )
        ],
      ),
    );
  }
}
