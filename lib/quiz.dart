import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final List<Map<String, Object>> questions;
  final int questionIndex;

  Quiz(
      {required this.answerQuestion,
      required this.questions,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    (questions[questionIndex]['answers'] as List<Map<String, bool>>)
        .map((e) => e.forEach((key, value) {
              print(key);
            }));

    return Column(
      children: [
        Question((questions[questionIndex]['questionText'] as String)),
        ...(questions[questionIndex]['answers'] as List<Map<String, bool>>)
            .map((ans) => Answer(
                () => answerQuestion(ans.values.first == true ? 1 : 0),
                ans.keys.first))
            .toList()
      ],
    );
  }
}
