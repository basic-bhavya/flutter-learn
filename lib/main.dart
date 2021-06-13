import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

// import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<QuizApp> {
  var _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    const _questions = [
      {
        'questionText': 'What is food?',
        'answers': ['fud', 'fooood', 'fodd']
      },
      {
        'questionText': 'What is life?',
        'answers': ['42', '21', '9', '0']
      },
      {
        'questionText': 'What is this?',
        'answers': ['A smoothie', 'an app', 'spartan']
      }
    ];

    void _answerQuestion() {
      if (_questionIndex < _questions.length)
        setState(() {
          _questionIndex = _questionIndex + 1;
        });
    }

    return MaterialApp(
        title: "Hey Look",
        home: Scaffold(
            appBar: AppBar(
              title: Text("My App"),
            ),
            body: _questionIndex < _questions.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questions: _questions,
                    questionIndex: _questionIndex)
                : Result()));
  }
}
