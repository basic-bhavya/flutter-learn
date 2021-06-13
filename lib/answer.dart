import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function() selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 250,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.amber),
          child: Text(answerText),
          onPressed: selectHandler,
        ));
  }
}
