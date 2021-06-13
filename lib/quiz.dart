import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function() answerQuestion;
  final List<Map<String, Object>> questions;
  final int questionIndex;

  Quiz(
      {required this.answerQuestion,
      required this.questions,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question((questions[questionIndex]['questionText'] as String)),
        ...(questions[questionIndex]['answers'] as List<String>).map((ans) {
          return Answer(answerQuestion, ans);
        }).toList()
        // onPressed: answerQuestion, child: Text("Answer 1"))
      ],
    );
  }
}
